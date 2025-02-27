#include "ExeEditor.h"
#include "stdlib.h"
#include "string.h"
#include "stdbool.h"

bool can_push_back_new_section(ExeInfo* exe_info) {
    char* end_of_sections = (char*)exe_info->nt_header + sizeof(IMAGE_NT_HEADERS64) 
        + sizeof(IMAGE_SECTION_HEADER) * exe_info->nt_header->FileHeader.NumberOfSections;
    for (int i = 0; i < sizeof(IMAGE_SECTION_HEADER); i++) {
        if (end_of_sections[i] != 0x00) {
            return false;
        }
    } 
    return true;
}

IMAGE_SECTION_HEADER* build_new_section_push_back(ExeInfo* exe_info, SectionBuildInfo* new_section, 
        unsigned int extra_file_padding_count) {
    IMAGE_SECTION_HEADER* new_header = calloc(1, sizeof(IMAGE_SECTION_HEADER));
    memcpy(new_header->Name, new_section->name, strlen(new_section->name) + 1);
    new_header->Misc.VirtualSize = align_up(new_section->data_size, exe_info->nt_header->OptionalHeader.SectionAlignment);
    new_header->SizeOfRawData = align_up(new_section->data_size, exe_info->nt_header->OptionalHeader.FileAlignment);
    new_header->Characteristics = new_section->characteristics;
    new_header->PointerToRawData = align_up(exe_info->file_size, exe_info->nt_header->OptionalHeader.FileAlignment);
    new_header->PointerToRawData += exe_info->nt_header->OptionalHeader.FileAlignment * extra_file_padding_count;
    
    IMAGE_SECTION_HEADER* last_section = exe_info->all_sections[exe_info->nt_header->FileHeader.NumberOfSections - 1];
    new_header->VirtualAddress = align_up(last_section->VirtualAddress + last_section->Misc.VirtualSize, exe_info->nt_header->OptionalHeader.SectionAlignment);

    return new_header;
}

void section_push_back(ExeInfo* exe_info, ModTable* mod_table, SectionBuildInfo* new_section, IMAGE_SECTION_HEADER* new_header) {   
    IMAGE_NT_HEADERS64* new_nt_header = malloc(sizeof(IMAGE_NT_HEADERS64));
    memcpy(new_nt_header, exe_info->nt_header, sizeof(IMAGE_NT_HEADERS64));
    new_nt_header->OptionalHeader.SizeOfImage = new_header->VirtualAddress + new_header->Misc.VirtualSize;
    new_nt_header->OptionalHeader.SizeOfInitializedData += new_header->SizeOfRawData;
    new_nt_header->FileHeader.NumberOfSections += 1;
    new_nt_header->FileHeader.Characteristics = new_nt_header->FileHeader.Characteristics | IMAGE_FILE_DEBUG_STRIPPED;
    
    unsigned int end_of_header_offset = exe_info->dos_header->e_lfanew + sizeof(IMAGE_NT_HEADERS64);
    add_mod_entry_replace(mod_table, exe_info->dos_header->e_lfanew, (char*)new_nt_header, sizeof(IMAGE_NT_HEADERS64));
    add_mod_entry_replace(mod_table, 
            end_of_header_offset + (exe_info->nt_header->FileHeader.NumberOfSections) * SECTION_TABLE_ENTRY_SIZE,
            (char*)new_header, sizeof(IMAGE_SECTION_HEADER));

    unsigned int front_padding_size = new_header->PointerToRawData - exe_info->file_size;
    char* padded_raw_data = calloc(1, front_padding_size + new_header->SizeOfRawData);
    memcpy(padded_raw_data + front_padding_size, new_section->data, new_section->data_size);
    add_mod_entry_append(mod_table, exe_info->file_size, padded_raw_data, front_padding_size + new_header->SizeOfRawData);
}

DWORD calculate_checksum(FILE* fd, unsigned int file_size) {
    fseek(fd, 0, SEEK_SET);
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
}

void fix_checksum(const char* filename, ModTable* mod_table) {
    unsigned int file_size = get_file_size(filename);
    FILE* fd = fopen(filename, "r");
    DWORD* checksum = malloc(sizeof(DWORD));
    *checksum = calculate_checksum(fd, file_size);
    add_mod_entry_replace(mod_table, 0x36 * 4, (char*)checksum, sizeof(DWORD));
    fclose(fd);
}
