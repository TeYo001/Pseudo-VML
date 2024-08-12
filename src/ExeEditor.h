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

ModTable* build_mod_table(char* original_data, unsigned int original_data_size, 
        unsigned int append_entry_max_count, unsigned int remove_entry_max_count, unsigned int replace_entry_max_count);
void add_mod_entry_append(ModTable* mod_table, unsigned int file_offset, char* append_data, unsigned int data_size);
void add_mod_entry_remove(ModTable* mod_table, unsigned int file_offset, unsigned int size);
void add_mod_entry_replace(ModTable* mod_table, unsigned int file_offset, char* replace_data, unsigned int data_size);
void free_mod_table(ModTable* mod_table);
void use_mod_table(ModTable* mod_table, FILE* fd);

/*
typedef struct _IMAGE_SECTION_HEADER {
    BYTE    Name[IMAGE_SIZEOF_SHORT_NAME];
    union {
            DWORD   PhysicalAddress;
            DWORD   VirtualSize;
    } Misc;
    DWORD   VirtualAddress;
    DWORD   SizeOfRawData;
    DWORD   PointerToRawData; // NOTE(TeYo): Must be divisible by 64 (will therefore usually be a little smaller then the actual PointerToRawData) (very annoying)
    DWORD   PointerToRelocations;
    DWORD   PointerToLinenumbers;
    WORD    NumberOfRelocations;
    WORD    NumberOfLinenumbers;
    DWORD   Characteristics;
} IMAGE_SECTION_HEADER, *PIMAGE_SECTION_HEADER;
*/

IMAGE_SECTION_HEADER* build_section_header(const char* name, unsigned int file_offset, unsigned int raw_data_file_offset, DWORD Characteristics);
void section_push_back(ExeInfo* exe_info, FILE* fd, ModTable* mod_table, IMAGE_SECTION_HEADER* new_header, char* new_data);
