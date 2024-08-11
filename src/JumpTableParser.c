#include "JumpTableParser.h"

#include "stdlib.h"
#include "stdio.h"
#include "stdbool.h"

JumpTable* build_jump_table(unsigned int max_jump_function_count) {
    JumpTable* jump_table = malloc(sizeof(JumpTable));
    jump_table->jump_functions = malloc(sizeof(JumpFunction) * max_jump_function_count);
    jump_table->jump_function_count = 0;
    jump_table->max_jump_function_count = max_jump_function_count;
    return jump_table;
}

void free_jump_table(JumpTable* jump_table) {
    free(jump_table->jump_functions);
    free(jump_table);
}

static unsigned int find_function_match(unsigned int target, DllInfo* current_dll, ImportInfo* import_info, DllInfo** out_from_dll) {
    // check current
    for (unsigned int i = 0; i < current_dll->function_count; i++) {
        if (target == current_dll->function_pointers[i]) {
            *out_from_dll = current_dll;
            return i;
        }
    }

    // check all
    for (unsigned int dll = 0; dll < import_info->dll_info_count; dll++) {
        DllInfo* dll_info = &import_info->dll_infos[dll];
        if (dll_info == current_dll) {
            continue;
        }
        for (unsigned int i = 0; i < dll_info->function_count; i++) {
            if (target == dll_info->function_pointers[i]) {
                *out_from_dll = dll_info;
                return i;
            }
        }
    }

    printf("ERROR: Couldn't find imported function with target: %" PRIx32 "\n", target);
    exit(1);
    return 0;
}

JumpTable* parse_jump_table(ExeInfo* exe_info, AsmParserState* asm_state, unsigned int max_jump_function_count) {
    JumpTable* jump_table = build_jump_table(max_jump_function_count);
    unsigned int found_jump_function_count = 0;
    DllInfo* current_dll = &exe_info->import_info->dll_infos[0];
    for (unsigned int inst_index = 0; inst_index < asm_state->decoded_instructions_count; inst_index++) {
        xed_decoded_inst_t* inst = &asm_state->decoded_instructions[inst_index];
        xed_iclass_enum_t iclass = xed_decoded_inst_get_iclass(inst);
        unsigned int ptr = asm_state->binary_instruction_pointers[inst_index];
        JumpEntry* entry = (JumpEntry*)(asm_state->binary_instructions + ptr);

        if (iclass == XED_ICLASS_JMP 
                && entry->opcode == VALID_JUMP_ENTRY_OPCODE 
                && entry->rm_byte == VALID_JUMP_ENTRY_RM_BYTE 
                && entry->padding == VALID_JUMP_ENTRY_PADDING) {
            if (found_jump_function_count >= jump_table->max_jump_function_count) {
                printf("ERROR: Too many jump functions found\n");
                exit(1);
            }
            unsigned int length_bytes = asm_state->instruction_lengths[inst_index];
            unsigned int target = ptr + length_bytes + entry->ptr + exe_info->nt_header->OptionalHeader.BaseOfCode;
            unsigned int func_index = find_function_match(target, current_dll, exe_info->import_info, &current_dll);
            JumpFunction* func = &jump_table->jump_functions[found_jump_function_count];
            func->from_dll = current_dll;
            func->function_index = func_index;
            func->jump_address = ptr;
            found_jump_function_count++;
        }
    }
    jump_table->jump_function_count = found_jump_function_count;

    return jump_table;
}

void print_jump_table(JumpTable* jump_table) {
    printf("### JUMP TABLE ###:\n");
    for (unsigned int i = 0; i < jump_table->jump_function_count; i++) {
        JumpFunction* func = &jump_table->jump_functions[i];
        printf(" - \'%s\' jump_addr: 0x%" PRIx64 " func idx: %u from: %s\n",
                func->from_dll->function_names[func->function_index],
                func->jump_address,
                func->function_index,
                func->from_dll->name);
    }
}
