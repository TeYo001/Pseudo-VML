#pragma once

#include "FileEditor.h"
#include "ExeParser.h"
#include "JumpTableParser.h"
#include "inttypes.h"

typedef enum {
    INST_TYPE_NONE,
    INST_TYPE_JUMP_NEAR,
    INST_TYPE_LEA,
    INST_TYPE_CALL_NEAR,
    INST_TYPE_REG_JUMP,
} InstructionType;

typedef enum {
    REG_RAX,
    REG_RCX,
    REG_RDX,
    REG_RBX,
} Register;

#define MOD_MASK 0b11000000
#define REG_OP_MASK 0b00111000
#define RM_MASK 0b00000111

typedef struct {
    InstructionType type;
    char* raw_data;
    unsigned int data_length;
    unsigned int instruction_file_offset;
} InstructionInfo;

typedef struct __attribute__((__packed__)) {
    uint8_t opcode;
    int32_t rel32;
} Instruction_JumpNear;

typedef struct __attribute__((__packed__)) {
    uint8_t prefix;
    uint8_t opcode;
    uint8_t mod_rm;
    int32_t rel32;
} Instruction_Lea;

typedef struct __attribute__((__packed__)) {
    uint8_t opcode;
    int32_t rel32;
} Instruction_CallNear;

typedef struct __attribute__((__packed__)) {
    uint8_t mov_opcode;
    int32_t rel32;
    uint8_t jmp_opcode;
    uint16_t jmp_args;
} Instruction_RegJump;

uint8_t build_modrm(uint8_t mod, uint8_t reg_op, uint8_t rm);
void print_modrm(uint8_t mod_rm);

void add_instruction(ModTable* mod_table, InstructionInfo* instruction);
void add_instruction_to_buffer(char* buffer, unsigned int buffer_offset, InstructionInfo* instruction);
void free_instruction(InstructionInfo* instruction);
void add_nops(ModTable* mod_table, unsigned int file_offset, unsigned int nop_count);
void add_nops_to_buffer(char* buffer, unsigned int buffer_offset, unsigned int nop_count);

unsigned int get_necessary_clearing_length(AsmParserState* asm_state, unsigned int instruction_idx, unsigned int min_length);

InstructionInfo* build_jump_near(IMAGE_SECTION_HEADER* instruction_header, unsigned int instruction_rva, unsigned int destination_virtual_address);
InstructionInfo* build_lea(IMAGE_SECTION_HEADER* instruction_header, unsigned int instruction_rva, Register destination_register, unsigned int destination_virtual_address);
InstructionInfo* build_call_near(IMAGE_SECTION_HEADER* instruction_header, unsigned int instruction_rva, unsigned int function_virtual_address);
InstructionInfo* build_call_near_to_jump_func_name(IMAGE_SECTION_HEADER* instruction_header, unsigned int instruction_rva, 
        JumpTable* jump_table, IMAGE_SECTION_HEADER* jump_func_header, const char* jump_func_name);
// NOTE(TeYo): This function is not well tested and most likely doesn't work
InstructionInfo* build_reg_jump(IMAGE_SECTION_HEADER* instruction_header, unsigned int instruction_rva, unsigned int destination_virtual_address);
