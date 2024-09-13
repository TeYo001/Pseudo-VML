#include "BuildPayload.h"
#include "Instruction.h"
#include "stdlib.h"
#include "string.h"

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

unsigned int build_function_address_table(char* payload_buffer, unsigned int buffer_offset,
        IMAGE_SECTION_HEADER* jump_table_header, JumpTable* jump_table, const char** jump_func_names, unsigned int jump_func_name_count) {
    uint64_t* buffer = (uint64_t*)(payload_buffer + buffer_offset);

    for (int i = 0; i < jump_func_name_count; i++) {
        JumpFunction* func = find_jump_func(jump_table, jump_func_names[i]);
        if (func == NULL) {
            printf("ERROR: Couldn't find jump function of the name \'%s\'\n", jump_func_names[i]);
            exit(1);
            buffer[i] = jump_table_header->VirtualAddress + func->jump_address; // converts the rva into a va
        }
    }

    return sizeof(uint64_t) * jump_func_name_count;
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
        uint64_t section_va,
        const char** processor_source_files,
        unsigned int processor_count) {
    unsigned int current_offset = buffer_offset;
    for (int i = 0; i < processor_count; i++) {
        current_offset += build_processor(payload_buffer, buffer_offset, section_va, processor_source_files[i]);
    }
    return current_offset; 
}
