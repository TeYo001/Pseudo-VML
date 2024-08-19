#include "InstructionConstructor.h"
#include "stdlib.h"

void add_instruction(ModTable* mod_table, InstructionInfo* instruction) {
    add_mod_entry_append(mod_table, instruction->instruction_file_offset, instruction->raw_data, instruction->data_length);
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

InstructionInfo* build_lea(unsigned int instruction_file_offset, Register destination_register, unsigned int location_file_offset) {
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
    int64_t disp = location_file_offset;
    disp -= instruction_file_offset + sizeof(Instruction_Lea);

    instruction->type = INST_TYPE_LEA;
    instruction->raw_data = (char*)raw_data;
    instruction->data_length = sizeof(Instruction_Lea);
    instruction->instruction_file_offset = instruction_file_offset;
    return instruction;
}

// TODO(TeYo): test these functions
