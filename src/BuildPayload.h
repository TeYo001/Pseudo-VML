#pragma once

#include "FileEditor.h"
#include "inttypes.h"
#include "JumpTableParser.h"

// NOTE(TeYo): This is specifically for function calls that need to be made relative
typedef struct {
    uint32_t* replace_addresses;
} SignatureReplaceTable;

SignatureReplaceTable* build_signature_replace_table(IMAGE_SECTION_HEADER* jump_table_header, JumpTable* jump_table,
        const char** jump_func_names, unsigned int jump_func_name_count);
void free_signature_replace_table(SignatureReplaceTable* sr_table);
bool replace_signature(SignatureReplaceTable* sr_table, uint32_t signature, uint64_t* out_replace_address);

unsigned int build_kernel32_information_table(char* payload_buffer, unsigned int buffer_offset,
        uint64_t kernel_module_ptr,
        uint64_t get_module_handle_func_ptr,
        uint64_t get_proc_address_func_ptr);

unsigned int build_return_table(char* payload_buffer, unsigned int buffer_offset,
        IMAGE_SECTION_HEADER* instruction_header,
        unsigned int* return_virtual_addresses, unsigned int return_address_count);

unsigned int build_processors(char* payload_buffer, unsigned int buffer_offset,
        IMAGE_SECTION_HEADER* payload_header,
        SignatureReplaceTable* sr_table,
        const char** processor_source_files,
        unsigned int processor_count,
        unsigned int** out_processor_entry_points);

unsigned int build_pre_processor(char* payload_buffer, unsigned int buffer_offset,
        IMAGE_SECTION_HEADER* payload_header, unsigned int processor_entry_point);

// NOTE(TeYo): buffer offset is the start of the processor in the payload buffer
unsigned int post_process_processor(char* payload_buffer, unsigned int buffer_offset, unsigned int processor_size_bytes,
        IMAGE_SECTION_HEADER* payload_header, SignatureReplaceTable* sr_table);
