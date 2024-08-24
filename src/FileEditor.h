#pragma once

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
    unsigned int file_offset;
    char* replace_data;
    unsigned int data_size;
} ModTableEntry_Replace;

typedef struct {
    char* original_data;
    unsigned int original_data_size;
    ModTableEntry_Append* append_entries;
    ModTableEntry_Remove* remove_entries;
    ModTableEntry_Replace* replace_entries;
    unsigned int append_entry_count;
    unsigned int append_entry_max_count;
    unsigned int remove_entry_count;
    unsigned int remove_entry_max_count;
    unsigned int replace_entry_count;
    unsigned int replace_entry_max_count;
} ModTable;

// TODO(TeYo): test these functions a little more perhaps

ModTable* build_mod_table(char* original_data, unsigned int original_data_size, 
        unsigned int append_entry_max_count, unsigned int remove_entry_max_count, unsigned int replace_entry_max_count);
void add_mod_entry_append(ModTable* mod_table, unsigned int file_offset, char* append_data, unsigned int data_size);
void add_mod_entry_remove(ModTable* mod_table, unsigned int file_offset, unsigned int size);
void add_mod_entry_replace(ModTable* mod_table, unsigned int file_offset, char* replace_data, unsigned int data_size);
void free_mod_table(ModTable* mod_table);
// clear the mod table without freeing it
void clear_mod_table(ModTable* mod_table, char* new_original_data, unsigned int new_original_data_size);
void use_mod_table(ModTable* mod_table, FILE* fd);

unsigned int align_up(unsigned int ptr, unsigned int alignment);
unsigned int follow_disp32(unsigned int end_of_current_inst_offset, unsigned int disp32);
unsigned int get_file_size(const char* filename);
