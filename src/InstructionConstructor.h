#pragma once

#include "FileEditor.h"
#include "inttypes.h"

typedef enum {
    INST_TYPE_NONE,
    INST_TYPE_JUMP_NEAR,
    INST_TYPE_LEA,
} InstructionType;

typedef enum {
    REG_RAX,
    REG_RCX,
    REG_RDX,
    REG_RBX,
} Register;

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

void add_instruction(ModTable* mod_table, InstructionInfo* instruction);
InstructionInfo* build_jump_near(unsigned int instruction_file_offset, unsigned int location_file_offset);
InstructionInfo* build_lea(unsigned int instruction_file_offset, Register destination_register, unsigned int location_file_offset);
