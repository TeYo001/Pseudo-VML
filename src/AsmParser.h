#pragma once

#include "../lib/xed/includes/xed-interface.h"
#include "stdbool.h"

typedef struct {
    const unsigned char* binary_instructions;
    unsigned int binary_instructions_length;
    xed_decoded_inst_t* decoded_instructions;
    unsigned int decoded_instructions_count;
    unsigned int decoded_instructions_max_count;
    unsigned int* instruction_lengths;
    unsigned int* binary_instruction_pointers;
    unsigned int binary_read_ptr;
    unsigned int text_file_offset;
    xed_machine_mode_enum_t xed_machine_mode;
    xed_address_width_enum_t xed_stack_addr_width;
} AsmParserState;

AsmParserState* build_asm_parser_state(
        const char* binary_instructions_filename,
        unsigned int decoded_instructions_max_count,
        unsigned int text_file_offset);

void free_asm_state(AsmParserState* asm_state);
void parse_asm(AsmParserState* asm_state);
bool parse_instruction(AsmParserState* asm_state);
void skip_zeros(AsmParserState* asm_state);
