#include "ExeParser.h"
#include "ElfParser.h"
#include "AsmParser.h"
#include "JumpTableParser.h"
#include "ExeEditor.h"
#include "Instruction.h"
#include "BuildPayload.h"
#include "../lib/xed/includes/xed-interface.h"
#include "stdbool.h"
#include "stdio.h"
#include "stdlib.h"
#include "assert.h"
#include "string.h"

/*
#ifdef _WIN32
#include "ExeParser.h"
#elif __linux__
#include "ElfParser.h"
#endisomethingwrong.hf
*/

void get_all_info_from_exe(const char* exe_filename, 
        unsigned int max_instruction_count,
        unsigned int max_jump_function_count,
        ExeInfo** out_exe_info, 
        AsmParserState** out_asm_state,
        JumpTable** out_jump_table) {
    char* binary_filename = malloc(strlen(exe_filename) - strlen(".exe") + strlen("_binary.bin") + 1);
    char* objdump_complete_filename = malloc(strlen(exe_filename) - strlen(".exe") + strlen("_objdump_complete.asm") + 1);

    memcpy(binary_filename, exe_filename, strlen(exe_filename) - strlen(".exe"));
    memcpy(objdump_complete_filename, exe_filename, strlen(exe_filename) - strlen(".exe"));
    memcpy(binary_filename + strlen(exe_filename) - strlen(".exe"), "_binary.bin", strlen("_binary.bin") + 1);
    memcpy(objdump_complete_filename + strlen(exe_filename) - strlen(".exe"), "_objdump_complete.asm", strlen("_objdump_complete.asm") + 1);

    printf("new bin: %s\n", binary_filename);
    printf("new objdump: %s\n", objdump_complete_filename);

    ExeInfo* exe_info = exe_get_info(exe_filename);
    
    FILE* bin_fd = fopen(binary_filename, "w");
    fwrite(exe_info->raw_text_code, exe_info->text_section->SizeOfRawData, 1, bin_fd);
    fclose(bin_fd);
    
    // objdump -b binary -m i386:x86-64 -D temp.bin > something.asm
    char* objdump_command_str = malloc(sizeof(char) * 512);
    snprintf(objdump_command_str, 512, "objdump -j .text -m i386:x86-64 -D %s > %s", exe_filename, objdump_complete_filename); // TODO(TeYo): filanames are not allowed to contain spaces
    system(objdump_command_str);

    AsmParserState* asm_state = build_asm_parser_state(binary_filename, max_instruction_count, exe_info->raw_text_file_offset);
    parse_asm(asm_state);

    JumpTable* jump_table = parse_jump_table(exe_info, asm_state, max_jump_function_count);

    if (out_exe_info != NULL) {
        *out_exe_info = exe_info;
    } else {
        free_exe_info(exe_info);
    }
    if (out_asm_state != NULL) {
        *out_asm_state = asm_state;
    } else {
        free_asm_state(asm_state);
    }
    if (out_jump_table != NULL) {
        *out_jump_table = jump_table;
    } else {
        free_jump_table(jump_table);
    }
}

void print_asm_instruction(AsmParserState* asm_state, unsigned int index, unsigned int entry_point_address) {
    xed_decoded_inst_t* inst = &asm_state->decoded_instructions[index];
    unsigned int length_bytes = asm_state->instruction_lengths[index];
    xed_iclass_enum_t iclass = xed_decoded_inst_get_iclass(inst);
    unsigned int ptr = asm_state->binary_instruction_pointers[index];
    
    printf("0x");
    for (int i = 0; i < length_bytes; i++) {
        printf("%1x", asm_state->binary_instructions[ptr + i]);
    }
    printf(" | %s: length: %u, ptr: 0x%x\n", xed_iclass_enum_t2str(iclass), length_bytes, ptr);

    uint8_t opcode = *(uint8_t*)(asm_state->binary_instructions + ptr);
    switch (opcode) {
        case 0xe8: {
            break;
            if (length_bytes != 5) {
                printf("ERROR: Impossible instruction length\n");
                exit(1);
            }
            int32_t disp32 = *(int32_t*)(asm_state->binary_instructions + ptr + 1);
            int32_t target = asm_state->text_file_offset + ptr + length_bytes + disp32;
            printf("current ptr (relative): 0x%" PRIx32 "\n", ptr);
            printf("current ptr (absolute): 0x%" PRIx32 "\n", asm_state->text_file_offset + ptr);
            printf("disp32: 0x%" PRIx32 "\n", disp32);
            printf("target: 0x%" PRIx32 "\n", target);
        } break;
        case 0xff: {
            uint8_t rm_byte = *(int8_t*)(asm_state->binary_instructions + ptr + 1);
            if (rm_byte == 0x15) {
                if (length_bytes != 6) {
                    printf("ERROR: Impossible instruction length\n");
                    exit(1);
                }
                uint32_t disp32 = *(uint32_t*)(asm_state->binary_instructions + ptr + 2);
                uint32_t target = asm_state->text_file_offset + ptr + length_bytes + disp32;
                int64_t target_rel = (int64_t)entry_point_address - (int64_t)target;
                target_rel *= -1;
                printf("current ptr (relative): 0x%" PRIx32 "\n", ptr);
                printf("current ptr (absolute): 0x%" PRIx32 "\n", asm_state->text_file_offset + ptr);
                printf("disp32: 0x%" PRIx32 "\n", disp32);
                printf("target: 0x%" PRIx32 "\n", target);
                printf("target (entry point relative): %" PRId64 "\n", target_rel / 64);
            } else {
                //printf("WARNING: Unsupported instruction rm byte\n");
            }
        } break;
        default: break;
    }
}

JumpFunction* find_printf_jump_func(JumpTable* jump_table) {
    for (unsigned int i = 0; i < jump_table->jump_function_count; i++) {
        JumpFunction* func = &jump_table->jump_functions[i];
        if (strcmp(func->from_dll->function_names[func->function_index], "fprintf") == 0) {
            return func;
        }
    }
    return NULL;
}

unsigned int find_printf_call(AsmParserState* asm_state, JumpFunction* printf_jump_func) {
    for (unsigned int i = 0; i < asm_state->decoded_instructions_count; i++) {
        xed_decoded_inst_t* inst = &asm_state->decoded_instructions[i];
        unsigned int ptr = asm_state->binary_instruction_pointers[i];
        xed_iclass_enum_t iclass = xed_decoded_inst_get_iclass(inst);
        if (iclass == XED_ICLASS_CALL_NEAR) {
            uint8_t opcode = *(uint8_t*)(asm_state->binary_instructions + ptr);
            if (opcode == 0xe8) {
                int32_t disp32 = *(int32_t*)(asm_state->binary_instructions + ptr + 1);
                unsigned int length_bytes = asm_state->instruction_lengths[i];
                int32_t target_va = ptr + length_bytes + disp32;
                if (target_va == printf_jump_func->jump_address) {
                    return i;
                }
            }
        }
    }

    printf("ERROR: Couldn't find printf call\n");
    exit(1);
    return 0;
}

void find_all_calls_to(AsmParserState* asm_state, JumpTable* jump_table, const char* func_name) {
    JumpFunction* jump_func = find_jump_func(jump_table, func_name);
    if (jump_func == NULL) {
        printf("ERROR: There is no such function within the jump table\n");
        exit(1);
    }

    for (unsigned int i = 0; i < asm_state->decoded_instructions_count; i++) {
        xed_decoded_inst_t* inst = &asm_state->decoded_instructions[i];
        unsigned int ptr = asm_state->binary_instruction_pointers[i];
        xed_iclass_enum_t iclass = xed_decoded_inst_get_iclass(inst);
        uint8_t opcode = *(uint8_t*)(asm_state->binary_instructions + ptr);
        if (iclass == XED_ICLASS_CALL_NEAR && opcode == 0xe8) {
            int32_t disp32 = *(int32_t*)(asm_state->binary_instructions + ptr + 1);
            unsigned int length_bytes = asm_state->instruction_lengths[i];
            int32_t target_va = ptr + length_bytes + disp32;
            if (target_va == jump_func->jump_address) {
                printf("\'%s\' call %u: 0x%" PRIx32 "\n", func_name, i, asm_state->text_file_offset + target_va);
            } 
        }
    }
}

void zero_init(char* data, unsigned int size) {
    for (unsigned int i = 0; i < size; i++) {
        data[i] = '\0';
    }
}

void read_file(FILE* fd, unsigned int file_size, char** out_data) {
    unsigned int part_count = file_size / 4096;
    unsigned int rest = file_size - part_count * 4096;
    fread(*out_data, 4096, part_count, fd);
    if (rest != 0) {
        fread(*out_data + part_count * 4096, rest, 1, fd);
    }
}

void print_hex(const char* data, unsigned int data_length) {
    printf("0x");
    for (unsigned int i = 0; i < data_length; i++) {
        printf("%" PRIx8 " ", (uint8_t)data[i]);
    }
    printf("\n");
}

// NOTE(TeYo): YES! I found the formula after like 10 hours: disp32 = dest_sec_va - src_sec_va - ptr - 7
// NOTE(TeYo): Technically the above formula doesn't always work, the actual formula is just the virtual address of the instruction pointer minus the va of the destination

void test_lea(unsigned int ptr, ExeInfo* exe_info) {
    unsigned int dest_sec_va = exe_info->all_sections[2]->VirtualAddress;
    unsigned int src_sec_va = exe_info->all_sections[0]->VirtualAddress;
    unsigned int dest_sec_fo = exe_info->all_sections[2]->PointerToRawData;
    unsigned int src_sec_fo = exe_info->all_sections[0]->PointerToRawData;
    unsigned int dest_va = dest_sec_va + 0x200;
    unsigned int dest_fo = 0x2200;
    unsigned int src_va = exe_info->text_section->VirtualAddress + ptr;

    // 0x2200 - 0x1825 = 0x9db
    int disp32 = dest_sec_va - src_sec_va - ptr - 7;
    printf("disp32: 0x%" PRIx32 "\n", disp32);
}

/*
void test_hello_torbjorn() {
    ExeInfo* exe_info;
    AsmParserState* asm_state;
    JumpTable* jump_table;
    const unsigned int MAX_INSTRUCTION_COUNT = 4096 * 8;
    const unsigned int MAX_JUMP_FUNCTION_COUNT = 128;
    const char* EXECUTABLE_FILENAME = "test/stripped64.exe";
    const char* MODIFIED_EXECUTABLE_FILENAME = "test/modified64.exe";
    get_all_info_from_exe(
            EXECUTABLE_FILENAME, 
            MAX_INSTRUCTION_COUNT,
            MAX_JUMP_FUNCTION_COUNT,
            &exe_info, 
            &asm_state,
            &jump_table);

    print_jump_table(jump_table);

    find_all_calls_to(asm_state, jump_table, "fprintf");
    find_all_calls_to(asm_state, jump_table, "fputs");

    FILE* fd = fopen(EXECUTABLE_FILENAME, "r");

    char* data = malloc(exe_info->file_size);
    read_file(fd, exe_info->file_size, &data);
    ModTable* mod_table = build_mod_table(data, exe_info->file_size, 8, 8, 8);
    char* new_raw_data = malloc(128);
    memcpy(new_raw_data, "Hello Torbjorn\n", strlen("Hello Torbjorn\n") + 1);
    SectionBuildInfo new_section = {
        .name = ".pvml",
        .data = new_raw_data,
        .data_size = 128,
        .characteristics = IMAGE_SCN_MEM_WRITE | IMAGE_SCN_MEM_READ | IMAGE_SCN_MEM_EXECUTE | IMAGE_SCN_CNT_CODE | IMAGE_SCN_CNT_INITIALIZED_DATA 
            | IMAGE_SCN_CNT_UNINITIALIZED_DATA
    };
    IMAGE_SECTION_HEADER* new_header;
    
    // add new section
    if (!section_push_back(exe_info, fd, mod_table, &new_section, false, &new_header)) {
        printf("FATAL WARNING: Couldn't push back new section\n");
        exit(1);
    }

    // change puts data ptr instruction
    {
        unsigned int ptr = asm_state->binary_instruction_pointers[1738];
        InstructionInfo* lea_info = build_lea(exe_info->text_section, ptr, REG_RCX, new_header->VirtualAddress);

        printf("new lea (len: %u): ", lea_info->data_length);
        print_hex(lea_info->raw_data, lea_info->data_length);
        //add_instruction(mod_table, lea_info);
    }

    fclose(fd);
    fd = fopen(MODIFIED_EXECUTABLE_FILENAME, "w");
    use_mod_table(mod_table, fd);
    fclose(fd);

    unsigned int new_file_size = get_file_size(MODIFIED_EXECUTABLE_FILENAME);
    fd = fopen(MODIFIED_EXECUTABLE_FILENAME, "r");
    char* new_data = malloc(new_file_size);
    read_file(fd, new_file_size, &new_data);
    clear_mod_table(mod_table, new_data, new_file_size);
    fclose(fd);
    fix_checksum(MODIFIED_EXECUTABLE_FILENAME, mod_table);
    fd = fopen(MODIFIED_EXECUTABLE_FILENAME, "w");
    use_mod_table(mod_table, fd);
    fclose(fd);

    char* objdump_command_str = malloc(sizeof(char) * 512);
    snprintf(objdump_command_str, 512, "objdump -j .text -m i386:x86-64 -D %s > %s",
            MODIFIED_EXECUTABLE_FILENAME, "test/modified64_objdump_complete.asm");
    system(objdump_command_str);
}
*/

int main() {
    ExeInfo* exe_info;
    AsmParserState* asm_state;
    JumpTable* jump_table;
    const unsigned int MAX_INSTRUCTION_COUNT = 4096 * 8;
    const unsigned int MAX_JUMP_FUNCTION_COUNT = 128;
    const unsigned int NEW_SECTION_RAW_DATA_SIZE = 128;
    const char* EXECUTABLE_FILENAME = "test/simple64.exe";
    const char* MODIFIED_EXECUTABLE_FILENAME = "test/modified64.exe";
    get_all_info_from_exe(
            EXECUTABLE_FILENAME, 
            MAX_INSTRUCTION_COUNT,
            MAX_JUMP_FUNCTION_COUNT,
            &exe_info, 
            &asm_state,
            &jump_table);

    print_jump_table(jump_table);

    find_all_calls_to(asm_state, jump_table, "fputs");

    FILE* fd = fopen(EXECUTABLE_FILENAME, "r");   

    char* data = malloc(exe_info->file_size);
    read_file(fd, exe_info->file_size, &data);
    ModTable* mod_table = build_mod_table(data, exe_info->file_size, 8, 8, 8);

    if (can_push_back_new_section(exe_info, fd)) {
        printf("WARNING: Cannot safely push back new section, information might be overwritten\n");
    }

    char* new_raw_data = malloc(NEW_SECTION_RAW_DATA_SIZE);
    SectionBuildInfo new_section = {
        .name = ".pvml",
        .data = new_raw_data,
        .data_size = NEW_SECTION_RAW_DATA_SIZE,
        .characteristics = IMAGE_SCN_MEM_WRITE | IMAGE_SCN_MEM_READ | IMAGE_SCN_MEM_EXECUTE | IMAGE_SCN_CNT_CODE | IMAGE_SCN_CNT_INITIALIZED_DATA 
            | IMAGE_SCN_CNT_UNINITIALIZED_DATA
    };
    IMAGE_SECTION_HEADER* new_header = build_new_section_push_back(exe_info, &new_section, 4, 4);
    
    // change call to jump instruction
    {
        unsigned int ptr = asm_state->binary_instruction_pointers[1740];
        InstructionInfo* jmp_info = build_jump_near(exe_info->text_section, ptr, new_header->VirtualAddress);
        printf("new jmp (len: %u): ", jmp_info->data_length);
        print_hex(jmp_info->raw_data, jmp_info->data_length);
        add_instruction(mod_table, jmp_info);
    }

    // add call instruction in new header
    {
        unsigned int ptr = 0;
        InstructionInfo* call_info = build_call_near_to_jump_func_name(new_header, ptr, jump_table, exe_info->text_section, "fputs");
        printf("new call (len: %u): ", call_info->data_length);
        print_hex(call_info->raw_data, call_info->data_length);
        add_instruction_to_buffer(new_raw_data, 0, call_info);
    }

    // add jmp back to text 
    {
        unsigned int ptr = sizeof(Instruction_CallNear);
        unsigned int dest_va = exe_info->text_section->VirtualAddress + asm_state->binary_instruction_pointers[1741];
        InstructionInfo* jmp_info = build_jump_near(new_header, ptr, dest_va);
        printf("new jump (len: %u): ", jmp_info->data_length);
        print_hex(jmp_info->raw_data, jmp_info->data_length);
        add_instruction_to_buffer(new_raw_data, ptr, jmp_info);
    }

    section_push_back(exe_info, mod_table, &new_section, new_header);

    fclose(fd);
    fd = fopen(MODIFIED_EXECUTABLE_FILENAME, "w");
    use_mod_table(mod_table, fd);
    fclose(fd);

    unsigned int new_file_size = get_file_size(MODIFIED_EXECUTABLE_FILENAME);
    fd = fopen(MODIFIED_EXECUTABLE_FILENAME, "r");
    char* new_data = malloc(new_file_size);
    read_file(fd, new_file_size, &new_data);
    clear_mod_table(mod_table, new_data, new_file_size);
    fclose(fd);
    fix_checksum(MODIFIED_EXECUTABLE_FILENAME, mod_table);
    fd = fopen(MODIFIED_EXECUTABLE_FILENAME, "w");
    use_mod_table(mod_table, fd);
    fclose(fd);

    char* objdump_command_str = malloc(sizeof(char) * 512);
    snprintf(objdump_command_str, 512, "objdump -j .text -m i386:x86-64 -D %s > %s",
            MODIFIED_EXECUTABLE_FILENAME, "test/modified64_objdump_complete.asm");
    system(objdump_command_str);
    
    {
        char* payload_buffer = malloc(4096);
        unsigned int jump_func_name_count = 2;
        const char* jump_func_names[] = {
            "fputs",
            "strlen"
        };
        unsigned int processor_count = 1;
        const char* processor_source_files[] = {
            "src/Processor.c"
        };
        unsigned int processor_return_addresses[] = {
            0
        };

        //build_function_address_table(payload_buffer, 0, jump_table, jump_func_names, jump_func_name_count);

        build_processors(payload_buffer, 0, processor_source_files, processor_return_addresses, processor_count);
    }
    
    

    return 0;
}
