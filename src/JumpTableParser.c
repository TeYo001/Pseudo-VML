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

JumpTable* parse_jump_table(ExeInfo* exe_info, AsmParserState* asm_state, unsigned int max_jump_function_count) {
    JumpTable* jump_table = build_jump_table(max_jump_function_count);

    unsigned int current_instruction_index = 0;
    unsigned int found_jump_function_count = 0;
    unsigned int current_dll_index = 0;
    DllInfo* current_dll = &exe_info->import_info->dll_infos[0];

    while (current_instruction_index < asm_state->decoded_instructions_count
            && found_jump_function_count < current_dll->function_count) {
        xed_decoded_inst_t* inst = &asm_state->decoded_instructions[current_instruction_index];
        xed_iclass_enum_t iclass = xed_decoded_inst_get_iclass(inst);
        unsigned int ptr = asm_state->binary_instruction_pointers[current_instruction_index];
        JumpEntry* entry = (JumpEntry*)(asm_state->binary_instructions + ptr);
        if (iclass == XED_ICLASS_JMP 
                && entry->opcode == VALID_JUMP_ENTRY_OPCODE 
                && entry->rm_byte == VALID_JUMP_ENTRY_RM_BYTE 
                && entry->padding == VALID_JUMP_ENTRY_PADDING) {
            unsigned int length_bytes = asm_state->instruction_lengths[current_instruction_index];
            unsigned int target = ptr + length_bytes + entry->ptr + exe_info->nt_header->OptionalHeader.BaseOfCode;
            for (unsigned int i = 0; i < current_dll->function_count; i++) {
                if (target == current_dll->function_pointers[i]) {
                    JumpFunction* func = &jump_table->jump_functions[found_jump_function_count];
                    func->from_dll = current_dll;
                    func->function_index = i;
                    found_jump_function_count++;
                    // TODO(TeYo): Continue
                }
            }
        }
        current_instruction_index++;
    }

    return jump_table;
}
