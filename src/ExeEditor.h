#pragma once

#include "ExeParser.h"
#include "stdio.h"

typedef struct {
    unsigned int file_offset;
    char* append_data;
    unsigned int data_size;
} ModTableEntry_Append;

typedef struct {
    unsigned int file_offset;
    unsigned int size;
} ModTableEntry_Remove;

typedef struct {
    ModTableEntry_Append* append_entries;
    ModTableEntry_Remove* remove_entries;
    unsigned int append_entry_count;
    unsigned int append_entry_max_count;
    unsigned int remove_entry_count;
    unsigned int remove_entry_max_count;
} ModTable;

ModTable* build_mod_table(unsigned int append_entry_max_count, unsigned int remove_entry_max_count);
void free_mod_table(ModTable* mod_table);
void use_mod_table(ModTable* mod_table, FILE* fd);
void section_push_back(ExeInfo* exe_info, FILE* fd, ModTable* mod_table, IMAGE_SECTION_HEADER* new_header, char* new_data);
