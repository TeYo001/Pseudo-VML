#include "ExeEditor.h"
#include "stdlib.h"
#include "string.h"
#include "stdbool.h"
#include "sys/stat.h"

ModTable* build_mod_table(char* original_data, unsigned int original_data_size, 
        unsigned int append_entry_max_count, unsigned int remove_entry_max_count, unsigned int replace_entry_max_count) {
    ModTable* mod_table = malloc(sizeof(ModTable));
    mod_table->append_entries = malloc(sizeof(ModTableEntry_Append) * append_entry_max_count);
    mod_table->remove_entries = malloc(sizeof(ModTableEntry_Remove) * remove_entry_max_count);
    mod_table->replace_entries = malloc(sizeof(ModTableEntry_Replace) * replace_entry_max_count);
    mod_table->append_entry_count = 0;
    mod_table->remove_entry_count = 0;
    mod_table->replace_entry_count = 0;
    mod_table->append_entry_max_count = append_entry_max_count;
    mod_table->remove_entry_max_count = remove_entry_max_count;
    mod_table->replace_entry_max_count = replace_entry_max_count;
    mod_table->original_data = original_data;
    mod_table->original_data_size = original_data_size;
    return mod_table;
}

void free_mod_table(ModTable* mod_table) {
    free(mod_table->append_entries);
    free(mod_table->remove_entries);
}

void add_mod_entry_append(ModTable* mod_table, unsigned int file_offset, char* append_data, unsigned int data_size) {
    if (mod_table->append_entry_count >= mod_table->append_entry_max_count) {
        printf("ERROR: Maximum number of append entries reached\n");
        exit(1);
    }
    ModTableEntry_Append* entry = &mod_table->append_entries[mod_table->append_entry_count];
    entry->file_offset = file_offset;
    entry->append_data = append_data;
    entry->data_size = data_size;
    mod_table->append_entry_count++;
}

void add_mod_entry_remove(ModTable* mod_table, unsigned int file_offset, unsigned int size) {
    if (mod_table->remove_entry_count >= mod_table->remove_entry_max_count) {
        printf("ERROR: Maximum number of remove entries reached\n");
        exit(1);
    }
    ModTableEntry_Remove* entry = &mod_table->remove_entries[mod_table->remove_entry_count];
    entry->file_offset = file_offset;
    entry->size = size;
    mod_table->remove_entry_count++;
}

void add_mod_entry_replace(ModTable* mod_table, unsigned int file_offset, char* replace_data, unsigned int data_size) {
    if (mod_table->replace_entry_count >= mod_table->replace_entry_max_count) {
        printf("ERROR: Maximum number of remove entries reached\n");
        exit(1);
    }
    ModTableEntry_Replace* entry = &mod_table->replace_entries[mod_table->replace_entry_count];
    entry->file_offset = file_offset;
    entry->replace_data = replace_data;
    entry->data_size = data_size;
    mod_table->replace_entry_count++;

}

static void get_sorted_indices_append(ModTableEntry_Append* entries, unsigned int entry_count, unsigned int** out_sorted_indices) {
    unsigned int lowest = -1;
    unsigned int lowest_index = 0;
    bool* found = malloc(sizeof(bool) * entry_count);
    for (unsigned int i = 0; i < entry_count; i++) {
        found[i] = false;
    }
    for (unsigned int i = 0; i < entry_count; i++) {
        for (unsigned int j = 0; j < entry_count; j++) {
            if (entries[j].file_offset >= lowest || found[j]) {
                continue;
            }
            lowest = entries[j].file_offset;
            lowest_index = j;
        }
        (*out_sorted_indices)[i] = lowest_index;
        found[lowest_index] = true;
        lowest = -1;
    }
    free(found);
}

static void get_sorted_indices_remove(ModTableEntry_Remove* entries, unsigned int entry_count, unsigned int** out_sorted_indices) {
    unsigned int lowest = -1;
    unsigned int lowest_index = 0;
    bool* found = malloc(sizeof(bool) * entry_count);
    for (unsigned int i = 0; i < entry_count; i++) {
        found[i] = false;
    }
    for (unsigned int i = 0; i < entry_count; i++) {
        for (unsigned int j = 0; j < entry_count; j++) {
            if (entries[j].file_offset >= lowest || found[j]) {
                continue;
            }
            lowest = entries[j].file_offset;
            lowest_index = j;
        }
        (*out_sorted_indices)[i] = lowest_index;
        found[lowest_index] = true;
        lowest = -1;
    }
    free(found);
}

void use_mod_table(ModTable* mod_table, FILE* fd) {
    const unsigned int MAX_WRITE_SIZE = 4096;
    unsigned int* sorted_indices_append = malloc(sizeof(unsigned int) * mod_table->append_entry_count);
    unsigned int* sorted_indices_remove = malloc(sizeof(unsigned int) * mod_table->remove_entry_count);
    unsigned int* skip_keys = malloc(sizeof(unsigned int) * mod_table->remove_entry_count);
    unsigned int* skip_values = malloc(sizeof(unsigned int) * mod_table->remove_entry_count);
    unsigned int skip_index = 0;
    unsigned int skip_amount = 0;
    unsigned int current_write_pointer = 0;
    unsigned int current_read_pointer = 0;
    unsigned int end_of_last_removed_section = 0;

    unsigned int modified_data_removed_size = mod_table->original_data_size;
    for (unsigned int i = 0; i < mod_table->remove_entry_count; i++) {
        modified_data_removed_size -= mod_table->remove_entries[i].size;
        skip_keys[i] = 0;
        skip_values[i] = 0;
    }
    unsigned int modified_data_written_size = modified_data_removed_size;
    for (unsigned int i = 0; i < mod_table->append_entry_count; i++) {
        modified_data_written_size += mod_table->append_entries[i].data_size;
    }
    char* modified_data_replaced = malloc(mod_table->original_data_size);
    char* modified_data_removed = malloc(modified_data_removed_size);
    char* modified_data_written = malloc(modified_data_written_size);

    get_sorted_indices_append(mod_table->append_entries, mod_table->append_entry_count, &sorted_indices_append);
    get_sorted_indices_remove(mod_table->remove_entries, mod_table->remove_entry_count, &sorted_indices_remove);

    for (unsigned int i = 0; i < mod_table->replace_entry_count; i++) {
        ModTableEntry_Replace* entry = &mod_table->replace_entries[i];
        unsigned int write_size = entry->file_offset - current_read_pointer;
        memcpy(modified_data_replaced + current_write_pointer, mod_table->original_data + current_read_pointer, write_size);
        current_write_pointer += write_size;
        current_read_pointer += write_size;
        memcpy(modified_data_replaced + current_write_pointer, entry->replace_data, entry->data_size);
        current_write_pointer += entry->data_size;
        current_read_pointer += entry->data_size;
    }
    {
        unsigned int write_size = mod_table->original_data_size - current_read_pointer;
        memcpy(modified_data_replaced + current_write_pointer, mod_table->original_data + current_read_pointer, write_size);
    }
    current_write_pointer = 0;
    current_read_pointer = 0;
    for (unsigned int i = 0; i < mod_table->remove_entry_count; i++) {
        ModTableEntry_Remove* entry = &mod_table->remove_entries[sorted_indices_remove[i]];
        unsigned int write_size = entry->file_offset - current_read_pointer;
        memcpy(modified_data_removed + current_write_pointer, modified_data_replaced + current_read_pointer, write_size);
        current_write_pointer += write_size;
        current_read_pointer += write_size + entry->size;
        skip_keys[i] = current_write_pointer;
        skip_values[i] = entry->size;
    }
    {
        unsigned int write_size = mod_table->original_data_size - current_read_pointer;
        memcpy(modified_data_removed + current_write_pointer, modified_data_replaced + current_read_pointer, write_size);
    }
    current_read_pointer = 0;
    current_write_pointer = 0;
    for (unsigned int i = 0; i < mod_table->append_entry_count; i++) {
        ModTableEntry_Append* entry = &mod_table->append_entries[sorted_indices_append[i]];
        // calculate skip amount
        for (unsigned int j = skip_index; j < mod_table->remove_entry_count; j++) {
            if (skip_keys[j] <= current_read_pointer + entry->file_offset) {
                skip_index = j + 1;
                skip_amount += skip_values[j];
            }
        }
        unsigned int new_entry_file_offset = entry->file_offset - skip_amount;
        unsigned int write_size = new_entry_file_offset - current_read_pointer;
        // copy
        memcpy(modified_data_written + current_write_pointer, modified_data_removed + current_read_pointer, write_size);
        current_read_pointer += write_size;
        current_write_pointer += write_size;
        // append
        memcpy(modified_data_written + current_write_pointer, entry->append_data, entry->data_size);
        current_write_pointer += entry->data_size;
    }
    {
        unsigned int write_size = modified_data_removed_size - current_read_pointer;
        memcpy(modified_data_written + current_write_pointer, modified_data_removed + current_read_pointer, write_size);
    }

    unsigned part_count = modified_data_written_size / MAX_WRITE_SIZE;
    unsigned int rest = modified_data_written_size - part_count * MAX_WRITE_SIZE;
    fwrite(modified_data_written, MAX_WRITE_SIZE, part_count, fd);
    if (rest != 0) {
        fwrite(modified_data_written + part_count * MAX_WRITE_SIZE, rest, 1, fd);
    }

    free(modified_data_removed);
    free(modified_data_written);
    free(sorted_indices_append);
    free(sorted_indices_remove);
    free(skip_keys);
    free(skip_values);
}

unsigned int align_up(unsigned int ptr, unsigned int alignment) {
    return ptr - (ptr % alignment) + alignment;
}

bool section_push_back(ExeInfo* exe_info, FILE* fd, ModTable* mod_table, SectionBuildInfo* new_section, bool force) {
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
    new_header->Misc.VirtualSize = new_section->data_size;
    new_header->SizeOfRawData = align_up(new_section->data_size, exe_info->nt_header->OptionalHeader.FileAlignment);
    new_header->Characteristics = new_section->characteristics;
    new_header->PointerToRawData = align_up(exe_info->file_size, exe_info->nt_header->OptionalHeader.SectionAlignment);
    
    // TODO(TeYo): Replace this with something more proper (also fix the hardcoded values like damn)
    IMAGE_SECTION_HEADER* last_header = exe_info->all_sections[exe_info->nt_header->FileHeader.NumberOfSections - 1];
    new_header->VirtualAddress = align_up(last_header->VirtualAddress + last_header->Misc.VirtualSize, 16);
    
    IMAGE_NT_HEADERS64* new_nt_header = malloc(sizeof(IMAGE_NT_HEADERS64));
    memcpy(new_nt_header, exe_info->nt_header, sizeof(IMAGE_NT_HEADERS64));
    new_nt_header->OptionalHeader.SizeOfImage = align_up(new_header->VirtualAddress + new_header->Misc.VirtualSize,
            exe_info->nt_header->OptionalHeader.SectionAlignment);
    
    add_mod_entry_replace(mod_table, exe_info->dos_header->e_lfanew, (char*)new_nt_header, sizeof(IMAGE_NT_HEADERS64));
    add_mod_entry_replace(mod_table, 
            exe_info->end_of_header_offset + 1 + (exe_info->nt_header->FileHeader.NumberOfSections) * SECTION_TABLE_ENTRY_SIZE,
            (char*)new_header, sizeof(IMAGE_SECTION_HEADER));

    unsigned int front_padding_size = new_header->PointerToRawData - exe_info->file_size;
    char* padded_raw_data = calloc(1, front_padding_size + new_header->SizeOfRawData);
    memcpy(padded_raw_data + front_padding_size, new_section->data, new_section->data_size);
    add_mod_entry_append(mod_table, exe_info->file_size, padded_raw_data, front_padding_size + new_header->SizeOfRawData);

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