#include "JumpTableParser.h"

#include "stdlib.h"
#include "stdio.h"
#include "stdbool.h"
#include "string.h"

JumpTable* build_jump_table(ExeInfo* exe_info, unsigned int max_jump_function_count, unsigned int max_jump_reference_count) {
    JumpTable* jump_table = malloc(sizeof(JumpTable));
    jump_table->jump_functions = malloc(sizeof(JumpFunction) * max_jump_function_count);
    jump_table->jump_function_count = 0;
    jump_table->max_jump_function_count = max_jump_function_count;
    jump_table->jump_references = malloc(sizeof(JumpReference) * max_jump_reference_count);
    jump_table->jump_reference_count = 0;
    jump_table->max_jump_reference_count = max_jump_reference_count;

    unsigned int iat_va = exe_info->nt_header->OptionalHeader.DataDirectory[IMPORT_ADDRESS_TABLE_ENTRY].VirtualAddress;
    unsigned int iat_size = exe_info->nt_header->OptionalHeader.DataDirectory[IMPORT_ADDRESS_TABLE_ENTRY].Size;
    IMAGE_SECTION_HEADER* parent_section = NULL;
    for (int i = 0; i < exe_info->nt_header->FileHeader.NumberOfSections; i++) {
        if (exe_info->all_sections[i]->VirtualAddress > iat_va) {
            continue;
        }
        parent_section = exe_info->all_sections[i];
    }
    if (parent_section == NULL) {
        printf("ERROR: Couldn't find the parent section of the IAT\n");
        exit(1);
    }
    jump_table->iat_start_virtual_address = iat_va;
    jump_table->iat_end_virtual_address = iat_va + iat_size;

    for (int i = 0; i < exe_info->import_info->dll_info_count; i++) {
        DllInfo* dll = &exe_info->import_info->dll_infos[i];
        if (jump_table->jump_function_count + dll->function_count > jump_table->max_jump_function_count) {
            printf("ERROR: Maximum jump function count reached\n");
            exit(1);
        }
        for (int j = 0; j < dll->function_count; j++) {
            JumpFunction* func = &jump_table->jump_functions[jump_table->jump_function_count];
            func->from_dll = dll;
            func->jump_address = dll->function_pointers[j];
            func->function_index = j;
            jump_table->jump_function_count++;
        } 
    }

    return jump_table;
}

// returns the jump function index
static unsigned int get_jump_func_from_reference(JumpTable* jump_table, int64_t dest_va) {
    for (int i = 0; i < jump_table->jump_function_count; i++) {
        if (jump_table->jump_functions[i].jump_address == dest_va) {
            return i;
        }
    }

    printf("ERROR: Coulnd't get the reference");
    exit(1);
    return 0;
}

void jump_table_find_references(ExeInfo* exe_info, AsmParserState* asm_state, JumpTable* jump_table) {
    for (unsigned int i = 0; i < asm_state->decoded_instructions_count; i++) {
        xed_decoded_inst_t* inst = &asm_state->decoded_instructions[i];
        xed_iclass_enum_t iclass = xed_decoded_inst_get_iclass(inst);
        uint8_t opcode = asm_state->binary_instructions[asm_state->binary_instruction_pointers[i]];
        uint8_t modrm = xed_decoded_inst_get_modrm(inst);
        unsigned int inst_size_bytes = asm_state->instruction_lengths[i];
        unsigned int ptr = asm_state->binary_instruction_pointers[i];
        
        if (iclass == XED_ICLASS_CALL_NEAR && modrm == 0x15) {
            uint32_t rel32 = *(uint32_t*)(asm_state->binary_instructions + (ptr + 2));
            int64_t dest_va = rel32 + asm_state->header->VirtualAddress + ptr + 6;
            if (!(dest_va >= jump_table->iat_start_virtual_address &&
                    dest_va <= jump_table->iat_end_virtual_address)) {
                continue;
            }
            unsigned int jump_func_idx = get_jump_func_from_reference(jump_table, dest_va);
            JumpFunction* jump_func = &jump_table->jump_functions[jump_func_idx];
            const char* dll_name = jump_func->from_dll->name;
            const char* func_name = jump_func->from_dll->function_names[jump_func->function_index];
            unsigned int file_offset = asm_state->header->PointerToRawData + asm_state->binary_instruction_pointers[i] - asm_state->header->VirtualAddress;
            printf("\'%s\' from: \'%s\' call at op idx: %u and file offset: 0x%" PRIx32 "\n", func_name, dll_name, i, file_offset);
            
            if (jump_table->jump_reference_count >= jump_table->max_jump_reference_count) {
                printf("ERROR: Max jump reference count reached\n");
                exit(1);
            }
            JumpReference* ref = &jump_table->jump_references[jump_table->jump_reference_count];
            jump_table->jump_reference_count++;
            ref->from_header = asm_state->header;
            ref->from_fo = file_offset;
            ref->from_va = asm_state->header->VirtualAddress + asm_state->binary_instruction_pointers[i];
            ref->to_func = jump_func;
        } else if (iclass == XED_ICLASS_JMP || modrm == 0x25) {
            // NOTE(TeYo): When ever you se this, it's probably from a reference table before the IAT
            uint32_t rel32 = *(uint32_t*)(asm_state->binary_instructions + (ptr + 2));
            int64_t dest_va = rel32 + asm_state->header->VirtualAddress  + ptr + 6;
            if (!(dest_va >= jump_table->iat_start_virtual_address &&
                        dest_va <= jump_table->iat_end_virtual_address)) {
                continue;
            }
            unsigned int jump_func_idx = get_jump_func_from_reference(jump_table, dest_va);
            JumpFunction* jump_func = &jump_table->jump_functions[jump_func_idx];
            const char* dll_name = jump_func->from_dll->name;
            const char* func_name = jump_func->from_dll->function_names[jump_func->function_index];
            unsigned int file_offset = asm_state->header->PointerToRawData + asm_state->binary_instruction_pointers[i];
            printf("\'%s\' from: \'%s\' call at op idx: %u and file offset: 0x%" PRIx32 "\n", func_name, dll_name, i, file_offset);
            
            if (jump_table->jump_reference_count >= jump_table->max_jump_reference_count) {
                printf("ERROR: Max jump reference count reached\n");
                exit(1);
            }
            JumpReference* ref = &jump_table->jump_references[jump_table->jump_reference_count];
            jump_table->jump_reference_count++;
            ref->from_header = asm_state->header;
            ref->from_fo = file_offset;
            ref->from_va = asm_state->header->VirtualAddress + asm_state->binary_instruction_pointers[i];
            ref->to_func = jump_func;
        }
    }

    printf("0x%" PRIx32 " -> 0x%" PRIx32 "\n", jump_table->iat_start_virtual_address, jump_table->iat_end_virtual_address);
}

void free_jump_table(JumpTable* jump_table) {
    free(jump_table->jump_functions);
    free(jump_table);
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
