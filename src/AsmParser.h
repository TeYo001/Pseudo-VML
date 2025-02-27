#pragma once

#include "../lib/xed/includes/xed-interface.h"
#include "stdbool.h"
#include "ExeParser.h"

typedef struct {
    IMAGE_SECTION_HEADER* header;
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

AsmParserState* build_asm_parser_state(ExeInfo* exe_info, const char* section_name, unsigned int decoded_instructions_max_count);
void free_asm_state(AsmParserState* asm_state);
void parse_asm(AsmParserState* asm_state);
bool parse_instruction(AsmParserState* asm_state);
void skip_zeros(AsmParserState* asm_state);
