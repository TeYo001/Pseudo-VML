#include "ExeEditor.h"
#include "stdlib.h"

ModTable* build_mod_table(unsigned int append_entry_max_count, unsigned int remove_entry_max_count) {
    ModTable* mod_table = malloc(sizeof(ModTable));
    mod_table->append_entries = malloc(sizeof(ModTableEntry_Append) * append_entry_max_count);
    mod_table->remove_entries = malloc(sizeof(ModTableEntry_Remove) * remove_entry_max_count);
    mod_table->append_entry_count = 0;
    mod_table->remove_entry_count = 0;
    mod_table->append_entry_max_count = append_entry_max_count;
    mod_table->remove_entry_max_count = remove_entry_max_count;
    return mod_table;
}

void free_mod_table(ModTable* mod_table) {
    free(mod_table->append_entries);
    free(mod_table->remove_entries);
}

void use_mod_table(ModTable* mod_table, FILE* fd) {
    const unsigned int MAX_WRITE_SIZE = 4096;
    unsigned int pointer_base_offset = 0;

    for (unsigned int i = 0; i < mod_table->append_entry_count; i++) {
        ModTableEntry_Append* entry = &mod_table->append_entries[i];
        unsigned int part_count = entry->data_size / MAX_WRITE_SIZE;
        unsigned int rest = entry->data_size - part_count * MAX_WRITE_SIZE;
        fseek(fd, pointer_base_offset + entry->file_offset, SEEK_SET);
        pointer_base_offset += entry->data_size;
        if (fwrite(entry->append_data, MAX_WRITE_SIZE, part_count, fd) != part_count) {
            printf("ERROR: Couldn't write data to file\n");
            exit(1);
        }
        if (rest == 0) {
            continue;
        }
        if (fwrite(entry->append_data + part_count * MAX_WRITE_SIZE, rest, 1, fd) != 1) {
            printf("ERROR: Couldn't write data to file\n");
            exit(1);
        }
    }
    // TODO(TeYo): Continue from here
}

void section_push_back(ExeInfo* exe_info, FILE* fd, ModTable* mod_table, IMAGE_SECTION_HEADER* new_header, char* new_data) {
    unsigned int end_of_sections_offset = exe_info->end_of_header_offset + exe_info->nt_header->FileHeader.NumberOfSections * SECTION_TABLE_ENTRY_SIZE;
    unsigned int read_ptr = end_of_sections_offset;
    char ch = fgetc(fd);
    unsigned int null_count = 0;

    fseek(fd, end_of_sections_offset, SEEK_SET);
    while (ch == 0x00) {
        ch = fgetc(fd);
        null_count++;
    }
    if (null_count < SECTION_TABLE_ENTRY_SIZE) {
        printf("ERROR: Not enough room to push back new section\n");
        exit(1);
    }
}
