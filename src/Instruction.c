#include "Instruction.h"
#include "stdlib.h"
#include "string.h"

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

void add_instruction_to_buffer(char* buffer, unsigned int buffer_offset, InstructionInfo* instruction) {
    memcpy(buffer + buffer_offset, instruction->raw_data, instruction->data_length);
}

void free_instruction(InstructionInfo* instruction) {
    free(instruction->raw_data);
    free(instruction);
}

InstructionInfo* build_jump_near(IMAGE_SECTION_HEADER* instruction_header, unsigned int instruction_rva, unsigned int destination_virtual_address) {
    InstructionInfo* instruction = malloc(sizeof(InstructionInfo));
    Instruction_JumpNear* raw_data = malloc(sizeof(Instruction_JumpNear));
    raw_data->opcode = 0xE9;

    unsigned int inst_va = instruction_header->VirtualAddress + instruction_rva + sizeof(Instruction_JumpNear);
    unsigned int inst_fo = instruction_header->PointerToRawData + instruction_rva;
    raw_data->rel32 = destination_virtual_address - inst_va;
    
    instruction->type = INST_TYPE_JUMP_NEAR;
    instruction->raw_data = (char*)raw_data;
    instruction->data_length = sizeof(Instruction_JumpNear);
    instruction->instruction_file_offset = inst_fo;
    return instruction;
}

InstructionInfo* build_lea(IMAGE_SECTION_HEADER* instruction_header, unsigned int instruction_rva, Register destination_register, 
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

    unsigned int inst_va = instruction_header->VirtualAddress + instruction_rva + 7;
    unsigned int inst_fo = instruction_header->PointerToRawData + instruction_rva;
    raw_data->rel32 = destination_virtual_address - inst_va;

    instruction->type = INST_TYPE_LEA;
    instruction->raw_data = (char*)raw_data;
    instruction->data_length = sizeof(Instruction_Lea);
    instruction->instruction_file_offset = inst_fo;
    return instruction;
}

InstructionInfo* build_call_near(IMAGE_SECTION_HEADER* instruction_header, unsigned int instruction_rva, unsigned int function_virtual_address) {
    InstructionInfo* instruction = malloc(sizeof(InstructionInfo));
    Instruction_CallNear* raw_data = malloc(sizeof(Instruction_CallNear));
    raw_data->opcode = 0xE8;

    unsigned int inst_va = instruction_header->VirtualAddress + instruction_rva + sizeof(Instruction_JumpNear);
    unsigned int inst_fo = instruction_header->PointerToRawData + instruction_rva;
    raw_data->rel32 = function_virtual_address - inst_va;

    instruction->type = INST_TYPE_CALL_NEAR;
    instruction->raw_data = (char*)raw_data;
    instruction->data_length = sizeof(Instruction_CallNear);
    instruction->instruction_file_offset = inst_fo;
    return instruction;
}

// TODO(TeYo): Reimplement this function at some point 

InstructionInfo* build_call_near_to_jump_func_name(IMAGE_SECTION_HEADER* instruction_header, unsigned int instruction_rva, 
        JumpTable* jump_table, IMAGE_SECTION_HEADER* jump_func_header, const char* jump_func_name) {
    /*
    InstructionInfo* instruction = malloc(sizeof(InstructionInfo));
    Instruction_CallNear* raw_data = malloc(sizeof(Instruction_CallNear));
    raw_data->opcode = 0xE8;

    JumpFunction* jump_func = find_jump_func(jump_table, jump_func_name);
    if (jump_func == NULL) {
        printf("ERROR: Couldn't find jump func with the name: \'%s\'\n", jump_func_name);
        exit(1);
    }
    unsigned int func_va = jump_func_header->VirtualAddress + jump_func->jump_address;

    //unsigned int func_va = 
    unsigned int inst_va = instruction_header->VirtualAddress + instruction_rva + sizeof(Instruction_JumpNear);
    unsigned int inst_fo = instruction_header->PointerToRawData + instruction_rva;
    raw_data->rel32 = func_va - inst_va;

    instruction->type = INST_TYPE_CALL_NEAR;
    instruction->raw_data = (char*)raw_data;
    instruction->data_length = sizeof(Instruction_CallNear);
    instruction->instruction_file_offset = inst_fo;
    return instruction;
    */

    printf("build_call_near_to_jump_func_name: THIS FUNCTION IS CURRENTLY DEPRICATED\n");
    return NULL;
}
