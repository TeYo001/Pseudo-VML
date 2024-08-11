#pragma once

#include "ExeParser.h"
#include "AsmParser.h"

typedef struct __attribute__((__packed__)) {
    uint8_t opcode;
    uint8_t rm_byte;
    uint32_t ptr;
    uint16_t padding;
} JumpEntry;

typedef struct {
    DllInfo* from_dll;
    unsigned int function_index;
    uint64_t jump_address;
} JumpFunction;

typedef struct {
    JumpFunction* jump_functions;
    unsigned int jump_function_count;
    unsigned int max_jump_function_count;
} JumpTable;

JumpTable* build_jump_table(unsigned int max_jump_function_count);
void free_jump_table(JumpTable* jump_table);
JumpTable* parse_jump_table(ExeInfo* exe_info, AsmParserState* asm_state, unsigned int max_jump_function_count);
void print_jump_table(JumpTable* jump_table);
