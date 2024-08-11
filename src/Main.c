#include "ExeParser.h"
#include "ElfParser.h"
#include "AsmParser.h"
#include "JumpTableParser.h"
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
        const char* binary_filename, 
        const char* objdump_filename, 
        unsigned int max_instruction_count,
        unsigned int max_jump_function_count,
        ExeInfo** out_exe_info, 
        AsmParserState** out_asm_state,
        JumpTable** out_jump_table) {
    ExeInfo* exe_info = exe_get_info(exe_filename);
    
    FILE* bin_fd = fopen(binary_filename, "w");
    fwrite(exe_info->raw_text_code, exe_info->text_section->SizeOfRawData, 1, bin_fd);
    fclose(bin_fd);

    // objdump -b binary -m i386:x86-64 -D temp.bin > something.asm
    char* objdump_command_str = malloc(sizeof(char) * 512);
    snprintf(objdump_command_str, 512, "objdump -b binary -m i386:x86-64 -D %s > %s", binary_filename, objdump_filename); // TODO(TeYo): filanames are not allowed to contain spaces
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

JumpFunction* find_jump_func(JumpTable* jump_table, const char* func_name) {
    for (unsigned int i = 0; i < jump_table->jump_function_count; i++) {
        JumpFunction* func = &jump_table->jump_functions[i];
        if (strcmp(func->from_dll->function_names[func->function_index], func_name) == 0) {
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

int main() {
    ExeInfo* exe_info;
    AsmParserState* asm_state;
    JumpTable* jump_table;
    const unsigned int MAX_INSTRUCTION_COUNT = 4096 * 8;
    const unsigned int MAX_JUMP_FUNCTION_COUNT = 128;
    get_all_info_from_exe(
            "test/simple64.exe", 
            "test/temp_simple.bin", 
            "test/objdump_simple.asm", 
            MAX_INSTRUCTION_COUNT,
            MAX_JUMP_FUNCTION_COUNT,
            &exe_info, 
            &asm_state,
            &jump_table);

    print_jump_table(jump_table);

    find_all_calls_to(asm_state, jump_table, "fprintf");
    find_all_calls_to(asm_state, jump_table, "fputs");

    return 0;
    for (int i = 0; i < asm_state->decoded_instructions_count; i++) {
        xed_iclass_enum_t iclass = xed_decoded_inst_get_iclass(&asm_state->decoded_instructions[i]);
        if (iclass == XED_ICLASS_SYSCALL) {
            printf("syscall: %d\n", i);
        } else if (iclass == XED_ICLASS_SYSCALL_32) {
            printf("syscall 32: %d\n", i);
        } else if (iclass == XED_ICLASS_CALL_NEAR) {
            if (i > 800) {
                break;
            }
            printf("call %d: ", i);
            print_asm_instruction(asm_state, i, exe_info->nt_header->OptionalHeader.AddressOfEntryPoint);
            //print_asm_instruction(asm_state, i);
        } else if (iclass == XED_ICLASS_CALL_FAR) {
            printf("call far %d: ", i);
            print_asm_instruction(asm_state, i, exe_info->nt_header->OptionalHeader.AddressOfEntryPoint);
        } else {
            // printf("other %d: %s\n", i, xed_iclass_enum_t2str(iclass));
        }
    }

    /*
    AsmParserState* asm_state = build_asm_parser_state("test/temp.bin", 4096);
    parse_asm(asm_state);

    printf("count: %u\n", asm_state->decoded_instructions_count);

    for (int i = 0; i < asm_state->decoded_instructions_count; i++) {
        xed_decoded_inst_t* instruction = &asm_state->decoded_instructions[i];
        printf("%d: %s\n", i, xed_iclass_enum_t2str(xed_decoded_inst_get_iclass(instruction)));
    }

    printf("SUCCCESS!\n");
    */

    return 0;
}
