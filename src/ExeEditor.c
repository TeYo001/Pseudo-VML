#include "ExeEditor.h"
#include "stdlib.h"
#include "string.h"
#include "stdbool.h"
#include "sys/stat.h"



bool section_push_back(ExeInfo* exe_info, FILE* fd, ModTable* mod_table, SectionBuildInfo* new_section, bool force, IMAGE_SECTION_HEADER** out_section_header) {
    fseek(fd, exe_info->end_of_header_offset + 1 + (exe_info->nt_header->FileHeader.NumberOfSections) * SECTION_TABLE_ENTRY_SIZE, SEEK_SET);
    unsigned int zero_count = 1;
    {
        char ch = fgetc(fd);
        while (ch == 0x00) {
            ch = fgetc(fd);
            zero_count++;
        }
    }
    if (zero_count <= SECTION_TABLE_ENTRY_SIZE && !force) {
        return false;
    }

    IMAGE_SECTION_HEADER* new_header = calloc(1, sizeof(IMAGE_SECTION_HEADER));
    memcpy(new_header->Name, new_section->name, strlen(new_section->name) + 1);
    new_header->Misc.VirtualSize = align_up(new_section->data_size, exe_info->nt_header->OptionalHeader.SectionAlignment);
    new_header->SizeOfRawData = align_up(new_section->data_size, exe_info->nt_header->OptionalHeader.FileAlignment);
    new_header->Characteristics = new_section->characteristics;
    new_header->PointerToRawData = align_up(exe_info->file_size, exe_info->nt_header->OptionalHeader.FileAlignment);

    // TODO(TeYo): Replace this with something more proper (also fix the hardcoded values like damn)
    IMAGE_SECTION_HEADER* last_header = exe_info->all_sections[exe_info->nt_header->FileHeader.NumberOfSections - 1];
    new_header->VirtualAddress = align_up(last_header->VirtualAddress + last_header->Misc.VirtualSize, 
            exe_info->nt_header->OptionalHeader.SectionAlignment);
    
    IMAGE_NT_HEADERS64* new_nt_header = malloc(sizeof(IMAGE_NT_HEADERS64));
    memcpy(new_nt_header, exe_info->nt_header, sizeof(IMAGE_NT_HEADERS64));
    new_nt_header->OptionalHeader.SizeOfImage = align_up(new_header->VirtualAddress + new_header->Misc.VirtualSize,
            exe_info->nt_header->OptionalHeader.SectionAlignment);
    new_nt_header->FileHeader.NumberOfSections += 1;

    add_mod_entry_replace(mod_table, exe_info->dos_header->e_lfanew, (char*)new_nt_header, sizeof(IMAGE_NT_HEADERS64));
    add_mod_entry_replace(mod_table, 
            exe_info->end_of_header_offset + 1 + (exe_info->nt_header->FileHeader.NumberOfSections) * SECTION_TABLE_ENTRY_SIZE,
            (char*)new_header, sizeof(IMAGE_SECTION_HEADER));

    unsigned int front_padding_size = new_header->PointerToRawData - exe_info->file_size;
    char* padded_raw_data = calloc(1, front_padding_size + new_header->SizeOfRawData);
    memcpy(padded_raw_data + front_padding_size, new_section->data, new_section->data_size);
    add_mod_entry_append(mod_table, exe_info->file_size - 1, padded_raw_data, front_padding_size + new_header->SizeOfRawData);

    printf("New section virtual address: 0x%" PRIx32 "\n", new_header->VirtualAddress);

    *out_section_header = new_header;
    return true;
}

// TODO(TeYo): test this function
void section_replace(ExeInfo* exe_info, FILE* fd, ModTable* mod_table, unsigned int section_index, SectionBuildInfo* new_section) {
    IMAGE_SECTION_HEADER* new_header = calloc(1, sizeof(IMAGE_SECTION_HEADER));
    memcpy(new_header->Name, new_section->name, strlen(new_section->name) + 1);
    new_header->Misc.VirtualSize = new_section->data_size; // the size of data in memory
    new_header->SizeOfRawData = align_up(new_section->data_size, exe_info->nt_header->OptionalHeader.FileAlignment);
    unsigned int padding_size = new_header->SizeOfRawData - new_section->data_size;
    new_header->Characteristics = new_section->characteristics;

    add_mod_entry_replace(mod_table, exe_info->end_of_header_offset + 1 + section_index * SECTION_TABLE_ENTRY_SIZE, (char*)new_header, sizeof(IMAGE_SECTION_HEADER));

    IMAGE_SECTION_HEADER* current_header = exe_info->all_sections[section_index];

    // new data fits within the current section data
    if (current_header->SizeOfRawData <= new_header->SizeOfRawData) {
        new_header->SizeOfRawData = current_header->SizeOfRawData;
        padding_size = new_header->SizeOfRawData - new_section->data_size;
        new_header->PointerToRawData = exe_info->all_sections[section_index]->PointerToRawData;

        if (current_header->Misc.VirtualSize <= new_header->Misc.VirtualSize) {
            new_header->VirtualAddress = current_header->VirtualAddress;
        } else {
            // TODO(TeYo): Replace this with something more proper (also fix the hardcoded values like damn)
            IMAGE_SECTION_HEADER* last_header = exe_info->all_sections[exe_info->nt_header->FileHeader.NumberOfSections - 1];
            new_header->VirtualAddress = align_up(last_header->VirtualAddress + last_header->Misc.VirtualSize, 16);

            IMAGE_NT_HEADERS64* new_nt_header = malloc(sizeof(IMAGE_NT_HEADERS64));
            memcpy(new_nt_header, exe_info->nt_header, sizeof(IMAGE_NT_HEADERS64));
            new_nt_header->OptionalHeader.SizeOfImage = align_up(new_header->VirtualAddress + new_header->Misc.VirtualSize, 
                    exe_info->nt_header->OptionalHeader.SectionAlignment);
            add_mod_entry_replace(mod_table, exe_info->dos_header->e_lfanew, (char*)new_nt_header, sizeof(IMAGE_NT_HEADERS64));
        }

        char* padded_raw_data = calloc(1, new_header->SizeOfRawData);
        memcpy(padded_raw_data, new_section->data, new_section->data_size);
        add_mod_entry_replace(mod_table, new_header->PointerToRawData, padded_raw_data, new_header->SizeOfRawData);
    } else {
        new_header->PointerToRawData = exe_info->file_size;

        // TODO(TeYo): Replace this with something more proper (also fix the hardcoded values like damn)
        IMAGE_SECTION_HEADER* last_header = exe_info->all_sections[exe_info->nt_header->FileHeader.NumberOfSections - 1];
        new_header->VirtualAddress = align_up(last_header->VirtualAddress + last_header->Misc.VirtualSize, 16);

        IMAGE_NT_HEADERS64* new_nt_header = malloc(sizeof(IMAGE_NT_HEADERS64));
        memcpy(new_nt_header, exe_info->nt_header, sizeof(IMAGE_NT_HEADERS64));
        new_nt_header->OptionalHeader.SizeOfImage = align_up(new_header->VirtualAddress + new_header->Misc.VirtualSize, 
                exe_info->nt_header->OptionalHeader.SectionAlignment);
        add_mod_entry_replace(mod_table, exe_info->dos_header->e_lfanew, (char*)new_nt_header, sizeof(IMAGE_NT_HEADERS64));

        char* padded_raw_data = calloc(1, new_header->SizeOfRawData);
        memcpy(padded_raw_data, new_section->data, new_section->data_size);
        add_mod_entry_append(mod_table, new_header->PointerToRawData, padded_raw_data, new_header->SizeOfRawData);
    }
}

// NOTE(TeYo): This is the algorith i based the caclculate checksum function on
/*
uint32_t pe_header_checksum(uint32_t* base, off_t size) {
  uint32_t sum=0;
  off_t i;
  for(i=0;i<(size/4);i++) {
    if(i==0x36) continue;
    sum+=__builtin_uadd_overflow(base[i],sum,&sum);
  }
  if(size%4) sum+=base[i];
  sum=(sum&0xffff)+(sum>>16);
  sum+=(sum>>16);
  sum&=0xffff;
  return(sum+size);
}
*/

DWORD calculate_checksum(FILE* fd, unsigned int file_size) {
    unsigned int part_count = file_size / 4096;
    unsigned int rest = file_size - part_count * 4096;
    char* data = malloc(file_size);
    fread(data, 4096, part_count, fd);
    if (rest != 0) {
        fread(data + part_count * 4096, rest, 1, fd);
    }
    uint32_t* base = (uint32_t*)data;
    off_t size = file_size;

    uint32_t sum=0;
    off_t i;
    for(i=0;i<(size/4);i++) {
        if(i==0x36) continue;
        sum+=__builtin_uadd_overflow(base[i],sum,&sum);
    }
    if(size%4) sum+=base[i];
    sum=(sum&0xffff)+(sum>>16);
    sum+=(sum>>16);
    sum&=0xffff;
    return(sum+size); 

    // NOTE(TeYo): My version of this algorithm didnt work so I just stole the actual algorithm
    /*
    const unsigned int CHECKSUM_INDEX = 0x36;
    unsigned int part_count = file_size / 4096;
    unsigned int rest = file_size - part_count * 4096;
    char* data = malloc(file_size);
    fread(data, 4096, part_count, fd);
    if (rest != 0) {
        fread(data + part_count * 4096, rest, 1, fd);
    }
    DWORD checksum = 0;
    for (unsigned int i = 0; i < file_size / 4; i++) {
        if (i == CHECKSUM_INDEX) {
            continue;
        }
        checksum += __builtin_uadd_overflow(((DWORD*)data)[i], checksum, &checksum);
    }
    if (file_size % 4 != 0) {
        checksum += ((DWORD*)data)[file_size / 4 - 1];
    }
    checksum = (checksum & 0xffff) + (checksum >> 16);
    checksum += (checksum >> 16);
    checksum &= 0xffff;
    checksum += file_size;
    return checksum;
    */
}

void fix_checksum(const char* filename, ModTable* mod_table) {
    unsigned int file_size = get_file_size(filename);
    FILE* fd = fopen(filename, "r");
    DWORD* checksum = malloc(sizeof(DWORD));
    *checksum = calculate_checksum(fd, file_size);
    add_mod_entry_replace(mod_table, 0x36 * 4, (char*)&checksum, sizeof(DWORD));
    fclose(fd);
}










/*
bool get_new_section_placement(ExeInfo* exe_info, const char* exe_filename, unsigned int* out_section_header_file_offset, unsigned int* out_raw_data_file_offset) {
    unsigned int end_of_sections_offset = exe_info->end_of_header_offset + exe_info->nt_header->FileHeader.NumberOfSections * SECTION_TABLE_ENTRY_SIZE;
    unsigned int read_ptr = end_of_sections_offset;
    unsigned int null_count = 0;

    FILE* fd = fopen(exe_filename, "r");

    fseek(fd, end_of_sections_offset, SEEK_SET);
    char ch = fgetc(fd);
    while (ch == 0x00) {
        ch = fgetc(fd);
        null_count++;
    }
    if (null_count < SECTION_TABLE_ENTRY_SIZE) {
        return false;
    }

    unsigned int file_size = 0;
    {
        struct stat file_stats = {0};
        stat(exe_filename, &file_stats);
        file_size = file_stats.st_size;
    }

    *out_section_header_file_offset = end_of_sections_offset;
    *out_raw_data_file_offset = align_up(file_size, exe_info->nt_header->OptionalHeader.FileAlignment);
    return true;
}

IMAGE_SECTION_HEADER* build_section_header(const char* name, unsigned int file_offset, unsigned int raw_data_file_offset, DWORD characteristics) {
    IMAGE_SECTION_HEADER* new = calloc(1, sizeof(IMAGE_SECTION_HEADER));
    memcpy(new->Name, ".pvml", strlen(".pvml"));
    new->Characteristics = characteristics;
    new->Misc.PhysicalAddress = file_offset;
    new->VirtualAddress;

    return new;
}

void section_push_back(ExeInfo* exe_info, FILE* fd, ModTable* mod_table, IMAGE_SECTION_HEADER* new_header, char* new_data) {
    unsigned int end_of_sections_offset = exe_info->end_of_header_offset + exe_info->nt_header->FileHeader.NumberOfSections * SECTION_TABLE_ENTRY_SIZE;
    unsigned int read_ptr = end_of_sections_offset;
    unsigned int null_count = 0;

    fseek(fd, end_of_sections_offset, SEEK_SET);
    char ch = fgetc(fd);
    while (ch == 0x00) {
        ch = fgetc(fd);
        null_count++;
    }
    if (null_count < SECTION_TABLE_ENTRY_SIZE) {
        printf("ERROR: Not enough room to push back new section\n");
        exit(1);
    }
    
    IMAGE_NT_HEADERS64* new_nt_header = malloc(sizeof(IMAGE_NT_HEADERS64));
    memcpy(new_nt_header, exe_info->nt_header, sizeof(IMAGE_NT_HEADERS64));
    new_nt_header->FileHeader.NumberOfSections += 1;
    unsigned size_of_image = new_header->PointerToRawData + new_header->SizeOfRawData;
    unsigned file_alignment = new_nt_header->OptionalHeader.FileAlignment;
    size_of_image -= (size_of_image % file_alignment) + file_alignment;
    new_nt_header->OptionalHeader.SizeOfImage = size_of_image;

    // add new section header into the blank space
    add_mod_entry_replace(mod_table, end_of_sections_offset, (char*)new_header, sizeof(IMAGE_SECTION_HEADER));
    add_mod_entry_replace(mod_table, exe_info->dos_header->e_lfanew, (char*)new_nt_header, sizeof(IMAGE_NT_HEADERS64));
    add_mod_entry_append(mod_table, exe_info->file_size - 1, new_data, new_header->SizeOfRawData);

    // TODO(TeYo): finish and test
    // TODO(TeYo): Figure out if the checksum is important
}

void section_replace(ExeInfo* exe_info, FILE* fd, ModTable* mod_table, unsigned int header_index, IMAGE_SECTION_HEADER* new_header, char* new_data) {
    if (exe_info->nt_header->FileHeader.NumberOfSections >= header_index) {
        printf("ERROR: header index larger outside of range\n");
        exit(1);
    }

    // fits inside of previous sections raw data
    if (exe_info->all_sections[header_index]->SizeOfRawData <= new_header->SizeOfRawData) {
        add_mod_entry_replace(mod_table, )
    } else {

    }
}
*/
