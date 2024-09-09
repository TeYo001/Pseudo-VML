#include "BuildPayload.h"
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
        JumpTable* jump_table, const char** jump_func_names, unsigned int jump_func_name_count) {
    uint64_t* buffer = (uint64_t*)(payload_buffer + buffer_offset);

    for (int i = 0; i < jump_func_name_count; i++) {
        JumpFunction* func = find_jump_func(jump_table, jump_func_names[i]);
        if (func == NULL) {
            printf("ERROR: Couldn't find jump function of the name \'%s\'\n", jump_func_names[i]);
            exit(1);
            buffer[i] = func->jump_address;
        }
    }

    return sizeof(uint64_t) * jump_func_name_count;
}

static unsigned int build_processor(char* payload_buffer, unsigned int buffer_offset,
        const char* source_file,
        unsigned int return_address) {
    char* compile_command = calloc(1, 512);
    unsigned int name_size = strlen(source_file) + 1;
    char* object_file = malloc(name_size);
    unsigned int write_ptr = 0;

    memcpy(object_file + strlen("build") - strlen("src"), source_file, name_size);
    memcpy(object_file, "build", strlen("build"));
    memcpy(object_file + strlen(object_file) - 2, ".o", strlen(".o"));
    snprintf(compile_command, 512, "x86_64-w64-mingw32-gcc -O1 -D \"RETURN_ADDRESS 0x%" PRIx32 "\" -c %s -o %s", 
            return_address, source_file, object_file);
    printf("command: %s\n", compile_command);
    //system(compile_command);

    // TODO(TeYo): Continue from here

    return 0; // temp

}

unsigned int build_processors(char* payload_buffer, unsigned int buffer_offset,
        const char** processor_source_files, 
        unsigned int* processor_return_addresses,
        unsigned int processor_count) {
    unsigned int current_offset = buffer_offset;
    for (int i = 0; i < processor_count; i++) {
        current_offset += build_processor(payload_buffer, buffer_offset, processor_source_files[i], processor_return_addresses[i]);
    }
    return 0; // temp
}
