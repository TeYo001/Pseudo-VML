#pragma once

#include "FileEditor.h"
#include "inttypes.h"
#include "JumpTableParser.h"

unsigned int build_kernel32_information_table(char* payload_buffer, unsigned int buffer_offset,
        uint64_t kernel_module_ptr,
        uint64_t get_module_handle_func_ptr,
        uint64_t get_proc_address_func_ptr);

unsigned int build_function_address_table(char* payload_buffer, unsigned int buffer_offset,
        JumpTable* jump_table, const char** jump_func_names, unsigned int jump_func_name_count);

unsigned int build_processors(char* payload_buffer, unsigned int buffer_offset,
        const char** processor_source_files, 
        unsigned int* processor_return_addresses,
        unsigned int processor_count);
