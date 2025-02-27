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
    IMAGE_SECTION_HEADER* from_header;
    uint32_t from_va;
    uint32_t from_fo;
    JumpFunction* to_func;
} JumpReference;

typedef struct {
    JumpFunction* jump_functions;
    unsigned int jump_function_count;
    unsigned int max_jump_function_count;
    JumpReference* jump_references;
    unsigned int jump_reference_count;
    unsigned int max_jump_reference_count;
    unsigned int iat_start_virtual_address;
    unsigned int iat_end_virtual_address;
} JumpTable;

JumpTable* build_jump_table(ExeInfo* exe_info, unsigned int max_jump_function_count, unsigned int max_jump_reference_count);
void jump_table_find_references(ExeInfo* exe_info, AsmParserState* asm_state, JumpTable* jump_table);
void free_jump_table(JumpTable* jump_table);
void print_jump_table(JumpTable* jump_table);
