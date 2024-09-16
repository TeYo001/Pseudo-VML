#include "BuildPayload.h"
#include "Instruction.h"
#include "PayloadStructure.h"
#include "stdlib.h"
#include "string.h"


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
        uint64_t section_va, const char* source_file) {
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
    snprintf(compile_command, SIZEOF_COMPILE_COMMAND, "x86_64-w64-mingw32-gcc -O1 -fPIE -D SECTION_VIRTUAL_ADDRESS=0x%" PRIx64 " -c %s -o %s", 
            section_va, source_file, object_file);
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
        unsigned int processor_size = build_processor(payload_buffer, buffer_offset, 
                payload_header->VirtualAddress, processor_source_files[i]);
        (*out_processor_entry_points)[i] = 
            post_process_processor(payload_buffer, current_offset, processor_size, payload_header, sr_table);
        current_offset += processor_size;
    }
    return current_offset; 
}

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
