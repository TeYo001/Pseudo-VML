#pragma once

#include "ExeParser.h"
#include "FileEditor.h"
#include "stdio.h"
#include "stdbool.h"


typedef struct {
    const char* name;
    char* data;
    unsigned int data_size;
    ULONGLONG characteristics;
} SectionBuildInfo;

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

bool can_push_back_new_section(ExeInfo* exe_info, FILE* fd);
IMAGE_SECTION_HEADER* build_new_section_push_back(ExeInfo* exe_info, SectionBuildInfo* new_section,
        unsigned int extra_virtual_padding_count, unsigned int extra_file_padding_count);
void section_push_back(ExeInfo* exe_info, ModTable* mod_table, SectionBuildInfo* new_section, IMAGE_SECTION_HEADER* new_header);

DWORD calculate_checksum(FILE* fd, unsigned int file_size);
// this function is the last thing you call on your file after you've applied all your modifications
// don't forget to clear the mod_table before use
void fix_checksum(const char* filename, ModTable* mod_table);
