#include "Instruction.h"
#include "stdlib.h"

uint8_t build_modrm(uint8_t mod, uint8_t reg_op, uint8_t rm) {
    uint8_t res = 0;
    res += mod << 6;
    res += reg_op << 3;
    res += rm;

    return res;
}

void print_modrm(uint8_t mod_rm) {
    printf("mod: 0b%b\n", (mod_rm & MOD_MASK) >> 6);
    printf("reg / op: 0b%b\n", (mod_rm & REG_OP_MASK) >> 3);
    printf("rm: 0b%b\n", mod_rm & RM_MASK);
}

void add_instruction(ModTable* mod_table, InstructionInfo* instruction) {
    add_mod_entry_replace(mod_table, instruction->instruction_file_offset, instruction->raw_data, instruction->data_length);
}

InstructionInfo* build_jump_near(unsigned int instruction_file_offset, unsigned int location_file_offset) {
    InstructionInfo* instruction = malloc(sizeof(InstructionInfo));
    Instruction_JumpNear* raw_data = malloc(sizeof(Instruction_JumpNear));
    raw_data->opcode = 0xE9;
    int64_t disp = location_file_offset;
    disp -= instruction_file_offset + sizeof(Instruction_JumpNear);
    raw_data->rel32 = disp;
    
    instruction->type = INST_TYPE_JUMP_NEAR;
    instruction->raw_data = (char*)raw_data;
    instruction->data_length = sizeof(Instruction_JumpNear);
    instruction->instruction_file_offset = instruction_file_offset;
    return instruction;
}

InstructionInfo* build_lea(ExeInfo* exe_info, unsigned int instruction_rva, Register destination_register, 
        unsigned int destination_virtual_address) {
    InstructionInfo* instruction = malloc(sizeof(InstructionInfo));
    Instruction_Lea* raw_data = malloc(sizeof(Instruction_Lea));
    raw_data->prefix = 0x48;
    raw_data->opcode = 0x8D;
    switch (destination_register) {
        case REG_RCX: { raw_data->mod_rm = 0x0D; } break;
        default: {
            printf("ERROR: Register not valid or not implemented\n");
            exit(1);
        } break;
    }
    /*
    raw_data->rel32 = location_file_offset + exe_info->nt_header->OptionalHeader.AddressOfEntryPoint - instruction_file_offset - 7 - 
        exe_info->nt_header->FileHeader.SizeOfOptionalHeader;
    */

    unsigned int inst_va = exe_info->text_section->VirtualAddress + instruction_rva + 7;
    unsigned int inst_fo = exe_info->raw_text_file_offset + instruction_rva;
    raw_data->rel32 = destination_virtual_address - inst_va;
    printf("inst va: %" PRIx32 "\n", inst_va);
    printf("dest va: %" PRIx32 "\n", destination_virtual_address);
    printf("diff: %" PRIx32 "\n", destination_virtual_address - inst_va);

    instruction->type = INST_TYPE_LEA;
    instruction->raw_data = (char*)raw_data;
    instruction->data_length = sizeof(Instruction_Lea);
    instruction->instruction_file_offset = inst_fo;
    return instruction;
}

// TODO(TeYo): test these functions
