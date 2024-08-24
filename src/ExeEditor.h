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

bool section_push_back(ExeInfo* exe_info, FILE* fd, ModTable* mod_table, SectionBuildInfo* new_section, bool force, IMAGE_SECTION_HEADER** out_section_header);
void section_replace(ExeInfo* exe_info, FILE* fd, ModTable* mod_table, unsigned int section_index, SectionBuildInfo* new_section);
DWORD calculate_checksum(FILE* fd, unsigned int file_size);
// this function is the last thing you call on your file after you've applied all your modifications
// don't forget to clear the mod_table before use
void fix_checksum(const char* filename, ModTable* mod_table);

//bool get_new_section_placement(ExeInfo* exe_info, const char* exe_filename, unsigned int* out_section_header_file_offset, unsigned int* out_raw_data_file_offset);
//IMAGE_SECTION_HEADER* build_section_header(const char* name, unsigned int file_offset, unsigned int raw_data_file_offset, DWORD Characteristics);
//void section_push_back(ExeInfo* exe_info, FILE* fd, ModTable* mod_table, IMAGE_SECTION_HEADER* new_header, char* new_data);
//void section_replace(ExeInfo* exe_info, FILE* fd, ModTable* mod_table, unsigned int header_index, IMAGE_SECTION_HEADER* new_header, char* new_data);
