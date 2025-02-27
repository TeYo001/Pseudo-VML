#pragma once
#include "PE.h"

typedef struct {
    char* name;
    WORD* hints;
    char** function_names;
    ULONGLONG* function_pointers;
    unsigned int function_count;
} DllInfo; 

typedef struct {
    unsigned int parent_virtual_address;
    DllInfo* dll_infos;
    unsigned int dll_info_count;
} ImportInfo;

// Note(TeYo): All fields are not garanteed to be populated, check which fields are populated by which functions
typedef struct {
    IMAGE_DOS_HEADER* dos_header;
    IMAGE_NT_HEADERS64* nt_header;
    //IMAGE_SECTION_HEADER* text_section; 
    //char* raw_text_code;
    //unsigned int raw_text_file_offset;
    //IMAGE_SECTION_HEADER* import_section;
    IMAGE_SECTION_HEADER** all_sections;
    //char* raw_import_data;
    //unsigned int raw_import_file_offset;
    ImportInfo* import_info;
    //unsigned int end_of_header_offset;
    unsigned int file_size;

    // new fields
    char* exe_file;
} ExeInfo;

void free_exe_info(ExeInfo* exe_info);
void free_import_info(ImportInfo* import_info);
void load_exe_file(ExeInfo* exe_info, const char* filename);
void exe_get_header_info(ExeInfo* exe_info);
IMAGE_SECTION_HEADER* get_section_from_idx(ExeInfo* exe_info, unsigned int idx, char** out_raw_data);
IMAGE_SECTION_HEADER* get_section_from_name(ExeInfo* exe_info, const char* name, char** out_raw_data);
void parse_import_data(ExeInfo* exe_info);
