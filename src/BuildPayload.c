#include "BuildPayload.h"
#include "Instruction.h"
#include "PayloadStructure.h"
#include "stdlib.h"
#include "string.h"

/*
SignatureReplaceTable* build_signature_replace_table(IMAGE_SECTION_HEADER* jump_table_header, JumpTable* jump_table,
        const char** jump_func_names, unsigned int jump_func_name_count) {
    if (jump_func_name_count < PAYLOAD_SIGNATURE_COUNT) {
        printf("ERROR: Too few entries in signature replace table\n");
        exit(1);
    } else if (jump_func_name_count > PAYLOAD_SIGNATURE_COUNT) {
        printf("ERROR: Too many entries in signature replace table\n");
        exit(1);
    }
    SignatureReplaceTable* sr_table = malloc(sizeof(SignatureReplaceTable));
    sr_table->replace_addresses = malloc(sizeof(uint32_t) * PAYLOAD_SIGNATURE_COUNT);

    for (int i = 0; i < jump_func_name_count; i++) {
        JumpFunction* func = find_jump_func(jump_table, jump_func_names[i]);
        if (func == NULL) {
            printf("ERROR: Couldn't find jump function of the name \'%s\'\n", jump_func_names[i]);
            exit(1);
        }
        sr_table->replace_addresses[i] = jump_table_header->VirtualAddress + func->jump_address; // converts the rva into a va
    }

    return sr_table;
}

void free_signature_replace_table(SignatureReplaceTable* sr_table) {
    free(sr_table->replace_addresses);
    free(sr_table);
}

bool replace_signature(SignatureReplaceTable* sr_table, uint32_t signature, uint64_t* out_replace_address) {
    for (unsigned int i = 0; i < PAYLOAD_SIGNATURE_COUNT; i++) {
        if (PAYLOAD_SIGNATURE(i) == signature) {
            *out_replace_address = sr_table->replace_addresses[i];
            return true;
        }
    }
    return false;
}
*/

unsigned int build_kernel32_information_table(char* payload_buffer, unsigned int buffer_offset,
        uint64_t kernel_module_ptr,
        uint64_t get_module_handle_func_ptr,
        uint64_t get_proc_address_func_ptr) {
    uint64_t* buffer = (uint64_t*)(payload_buffer + buffer_offset);
    buffer[0] = kernel_module_ptr;
    buffer[1] = get_module_handle_func_ptr;
    buffer[2] = get_proc_address_func_ptr;
    return sizeof(uint64_t) * 3;
}

unsigned int build_return_table(char* payload_buffer, unsigned int buffer_offset,
        IMAGE_SECTION_HEADER* instruction_header,
        unsigned int* return_virtual_addresses, unsigned int return_address_count) {
    unsigned int write_ptr = 0;
    
    for (unsigned int i = 0; i < return_address_count; i++) {
        unsigned int instruction_rva = buffer_offset;
        unsigned int dest_va = return_virtual_addresses[i];
        InstructionInfo* inst = build_jump_near(instruction_header, instruction_rva, dest_va);
        add_instruction_to_buffer(payload_buffer, buffer_offset + write_ptr, inst);
        write_ptr += sizeof(Instruction_JumpNear);
        free_instruction(inst);
    }

    return sizeof(Instruction_JumpNear) * return_address_count;
}

static unsigned int build_processor(char* payload_buffer, unsigned int buffer_offset,
        uint64_t get_module_handle_ptr, uint64_t load_library_ptr, uint64_t free_library_ptr, uint64_t get_proc_address_ptr, 
        const char* source_file) {
    const unsigned int SIZEOF_COMPILE_COMMAND = 512;
    char* compile_command = calloc(1, SIZEOF_COMPILE_COMMAND);
    unsigned int name_size = strlen(source_file) + 1;
    char* object_file = malloc(name_size);
    char* binary_file = malloc(name_size);
    unsigned int write_ptr = 0;

    memcpy(object_file + strlen("build") - strlen("src"), source_file, name_size);
    memcpy(object_file, "build", strlen("build"));
    memcpy(binary_file, object_file, strlen(object_file) + 1);
    memcpy(object_file + strlen(object_file) - 2, ".o", strlen(".o") + 1);
    memcpy(binary_file + strlen(binary_file) - 2, ".bin", strlen(".bin") + 1);
    snprintf(compile_command, SIZEOF_COMPILE_COMMAND, "x86_64-w64-mingw32-gcc -O0 -fPIE -mabi=ms" 
            " -D GET_MODULE_HANDLE_PTR=0x%" PRIx64 
            " -D LOAD_LIBRARY_PTR=0x%" PRIx64
            " -D FREE_LIBRARY_PTR=0x%" PRIx64
            " -D GET_PROC_ADDRESS_PTR=0x%" PRIx64
            " -c %s -o %s", 
            get_module_handle_ptr, load_library_ptr, free_library_ptr, get_proc_address_ptr, source_file, object_file);
    printf("%s\n", compile_command);
    system(compile_command);
    memset(compile_command, 0, SIZEOF_COMPILE_COMMAND);
    snprintf(compile_command, SIZEOF_COMPILE_COMMAND, "objcopy -O binary -j .text %s %s", object_file, binary_file);
    system(compile_command);

    unsigned int file_size = get_file_size(binary_file);
    char* binary_process_data = malloc(file_size);
    FILE* fd = fopen(binary_file, "r");
    read_file(fd, file_size, &binary_process_data);
    fclose(fd);
    memcpy(payload_buffer + buffer_offset, binary_process_data, file_size);

    free(binary_process_data);
    free(object_file);
    free(binary_file);
    free(compile_command);

    return file_size;
}

unsigned int build_processors(char* payload_buffer, unsigned int buffer_offset,
        IMAGE_SECTION_HEADER* payload_header,
        SignatureReplaceTable* sr_table,
        const char** processor_source_files,
        unsigned int processor_count,
        unsigned int** out_processor_entry_points) {
    unsigned int current_offset = buffer_offset;
    for (int i = 0; i < processor_count; i++) {
        uint64_t get_module_handle_ptr = 0x7b60d1c0;
        uint64_t load_library_ptr = 0x7b60e0a8;
        uint64_t free_library_ptr = 0x123; // TODO(TeYo): Fill this in
        uint64_t get_proc_address_ptr = 0x7b61c110;
        unsigned int processor_size = build_processor(payload_buffer, buffer_offset, 
                get_module_handle_ptr, load_library_ptr, free_library_ptr, get_proc_address_ptr, 
                processor_source_files[i]);
        /*
        unsigned int replace_with_entry_point_address;
        unsigned int replace_with_return_address;
        unsigned int pre_process_return_address;
        build_pre_processor(payload_buffer, PRE_PROCESSOR_BEGIN_PTR, payload_header, 
                &replace_with_entry_point_address, &replace_with_return_address, &pre_process_return_address);
        (*out_processor_entry_points)[i] = 
            post_process_processor(payload_buffer, current_offset, processor_size, payload_header, sr_table, pre_process_return_address);
        current_offset += processor_size;
        finish_pre_processor(payload_buffer, payload_header, 
                replace_with_entry_point_address, (*out_processor_entry_points)[i], 
                replace_with_return_address, RETURN_TABLE_PTR + RETURN_TABLE_ENTRY_SIZE * i);
        */
    }
    return current_offset; 
}

// NOTE(TeYo): This is temporarly removed to simplify testing
/* 
unsigned int build_pre_processor(char* payload_buffer, unsigned int buffer_offset,
        IMAGE_SECTION_HEADER* payload_header, 
        unsigned int* out_replace_with_entry_point_address, 
        unsigned int* out_replace_with_return_address,
        unsigned int* out_pre_process_return_address) {
    const char* pre_processor_filename = "src/PreProcess.asm";
    const char* bin_filename = "build/PreProcess.bin";
    const unsigned int max_instruction_length = 512;
    char* buffer = payload_buffer + buffer_offset;
    char* instruction = malloc(max_instruction_length);
    snprintf(instruction, max_instruction_length, "nasm -f bin -DARGUMENT_TABLE_PTR=0x%" PRIx32 " -DPRE_PROCESSOR_BEGIN_PTR=0x%" PRIx32 " %s -o %s", 
            ARGUMENT_TABLE_PTR, PRE_PROCESSOR_BEGIN_PTR, pre_processor_filename, bin_filename);
    system(instruction);
    unsigned int file_size = get_file_size(bin_filename);
    char* file_buffer = malloc(file_size);
    FILE* fd = fopen(bin_filename, "r");
    read_file(fd, file_size, &file_buffer);
    memcpy(buffer, file_buffer, file_size);

    unsigned int process_insert_point = file_size - 1;
    while ((uint8_t)file_buffer[process_insert_point] != 0x90) {
        process_insert_point--;
    }
    while ((uint8_t)file_buffer[process_insert_point] != 0xc0) {
        process_insert_point--;
    }
    process_insert_point--;
    if ((uint8_t)file_buffer[process_insert_point] != 0x31) {
        printf("ERROR: Couldn't find \'xor eax, eax\' after nop instructions\n");
        exit(1);
    }

    unsigned int replace_return_address = file_size - 1;
    while ((uint8_t)file_buffer[replace_return_address] != 0xc3) {
        replace_return_address--;
    }
    unsigned int return_address_begin = replace_return_address;
    while ((uint8_t)file_buffer[return_address_begin] != 0x90) {
        return_address_begin--;
    }
    return_address_begin++;

    free(file_buffer);
    *out_replace_with_entry_point_address = buffer_offset + process_insert_point;
    *out_replace_with_return_address = buffer_offset + replace_return_address;
    *out_pre_process_return_address = buffer_offset + return_address_begin;
    return file_size;
}
*/

/*
unsigned int build_pre_processor(char* payload_buffer, unsigned int buffer_offset,
        IMAGE_SECTION_HEADER* payload_header, unsigned int processor_entry_point) {
    const char* pre_processor_filename = "src/FetchInstruction.asm";
    const char* bin_filename = "build/FetchInstruction.bin";
    const unsigned int max_instruction_length = 512;
    char* buffer = payload_buffer + buffer_offset;
    char* instruction = malloc(max_instruction_length);
    snprintf(instruction, max_instruction_length, "nasm -f bin %s -o %s", pre_processor_filename, bin_filename);
    system(instruction);
    unsigned int file_size = get_file_size(bin_filename);
    char* file_buffer = malloc(file_size + 4);
    FILE* fd = fopen(bin_filename, "r");
    read_file(fd, file_size, &file_buffer);
    unsigned int process_insert_point = file_size - 1;
    while ((uint8_t)file_buffer[process_insert_point] != 0xc3) {
        process_insert_point--;
    }
    // TODO(TeYo): perhaps change this to a jump far so that the segment things arent all fucked
    InstructionInfo* inst = build_jump_near(payload_header, 
            buffer_offset + process_insert_point, payload_header->VirtualAddress + processor_entry_point);
    add_instruction_to_buffer(file_buffer, process_insert_point, inst);
    memcpy(buffer, file_buffer, file_size + 4);

    return file_size;
}
*/

unsigned int post_process_processor(char* payload_buffer, unsigned int buffer_offset, unsigned int processor_size_bytes,
        IMAGE_SECTION_HEADER* payload_header, SignatureReplaceTable* sr_table, unsigned int pre_process_return_point_address) {
    const unsigned int ENTRY_POINT_UP_OFFSET = 12;

    char* buffer = (payload_buffer + buffer_offset);
    unsigned int entry_point = 0;
    bool found_entry_point = false;
    bool found_return_point = false;

    for (unsigned int i = 0; i < processor_size_bytes - PAYLOAD_SIGNATURE_SIZE_BYTES - 1; i++) {
        uint8_t opcode = *(uint8_t*)(buffer + i);
        uint32_t signature = *(uint32_t*)(buffer + i + 1);
        uint64_t replace_address;
        if (opcode != 0xe8) {
            continue;
        }
        if (signature == PAYLOAD_ENTRY_POINT_SIGNATURE) {
            entry_point = buffer_offset + i - ENTRY_POINT_UP_OFFSET;
            found_entry_point = true;
            InstructionInfo* inst = build_jump_near(payload_header, buffer_offset + i, 
                    payload_header->VirtualAddress + buffer_offset + i + 5);
            add_instruction_to_buffer(buffer, i, inst);
            continue;
        }
        if (signature == PAYLOAD_RETURN_POINT_SIGNATURE) {
            found_return_point = true;

        }
    }

    if (!found_entry_point) {
        printf("ERROR: Couldn't find entry point of processor, remember to place the entry point signature\n");
        exit(1);
    }

    return entry_point;
}

/*
unsigned int post_process_processor(char* payload_buffer, unsigned int buffer_offset, unsigned int processor_size_bytes,
        IMAGE_SECTION_HEADER* payload_header, SignatureReplaceTable* sr_table) {
    char* buffer = (payload_buffer + buffer_offset);
    unsigned int entry_point = 0;
    bool found_entry_point = false;

    unsigned int function_count = 0;
    unsigned int function_addresses[PAYLOAD_SIGNATURE_COUNT];
    unsigned int replace_addresses[PAYLOAD_SIGNATURE_COUNT];

    for (unsigned int i = 0; i < processor_size_bytes - PAYLOAD_SIGNATURE_SIZE_BYTES - 1; i++) {
        uint8_t opcode = *(uint8_t*)(buffer + i);
        uint32_t signature = *(uint32_t*)(buffer + i + 1);
        uint64_t replace_address;
        if (opcode != 0xe8) {
            continue;
        }
        if (signature == PAYLOAD_ENTRY_POINT_SIGNATURE) {
            entry_point = buffer_offset + i;
            found_entry_point = true;
            InstructionInfo* inst = build_jump_near(payload_header, buffer_offset + i, 
                    payload_header->VirtualAddress + buffer_offset + i + 5);
            add_instruction_to_buffer(buffer, i, inst);
            continue;
        }
        if (!replace_signature(sr_table, signature, &replace_address)) {
            continue;
        }
        InstructionInfo* inst = build_call_near(payload_header, buffer_offset + i, replace_address);
        add_instruction_to_buffer(buffer, i, inst);
        function_addresses[function_count] = buffer_offset + i;
        replace_addresses[function_count] = replace_address;
        function_count++;
    }

    if (function_count != PAYLOAD_SIGNATURE_COUNT) {
        printf("ERROR: Not all functions with payload signatures were found within the executable. "
                "Perhaps you didn't implement all their function definitions\n");
        exit(1);
    }
    
    for (unsigned int i = 0; i < processor_size_bytes - 5; i++) {
        uint8_t opcode = *(uint8_t*)(buffer + i);
        int32_t disp32 = *(int32_t*)(buffer + i + 1);
        unsigned int addr = disp32 + buffer_offset + i + 5;

        if (opcode != 0xe8) {
            continue;
        }
        for (unsigned int j = 0; j < PAYLOAD_SIGNATURE_COUNT; j++) {
            if (addr == function_addresses[j]) {
                InstructionInfo* inst = build_call_near(payload_header, buffer_offset + i, replace_addresses[j]);
                add_instruction_to_buffer(buffer, i, inst);
            }
        }
    }

    if (!found_entry_point) {
        printf("ERROR: Couldn't find entry point of processor, remember to place the entry point signature\n");
        exit(1);
    }
    return entry_point;
}
*/

void finish_pre_processor(char* payload_buffer, IMAGE_SECTION_HEADER* payload_header,
        unsigned int replace_with_entry_point_address, unsigned int entry_point_address,
        unsigned int replace_with_return_address, unsigned int return_address) {
    {
        InstructionInfo* inst = build_jump_near(payload_header, 
                replace_with_entry_point_address, payload_header->VirtualAddress + entry_point_address);
        add_instruction_to_buffer(payload_buffer, replace_with_entry_point_address, inst);
    }
    {
        printf("replace with return address: 0x%" PRIx32 "\n", payload_header->VirtualAddress + replace_with_return_address);
        InstructionInfo* inst = build_jump_near(payload_header,
                replace_with_return_address, payload_header->VirtualAddress + return_address);
        add_instruction_to_buffer(payload_buffer, replace_with_return_address, inst);
    }
}

void build_simple_testing_payload(char* payload_buffer, IMAGE_SECTION_HEADER* payload_header) {
    // TODO(TeYo): Continue from here
}
