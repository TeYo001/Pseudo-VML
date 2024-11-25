#include "AsmParser.h"
#include "stdio.h"
#include "stdbool.h"
#include "stdlib.h"
#include "sys/stat.h"
#include "string.h"
#include "inttypes.h"

bool xed_initialized = false;

AsmParserState* build_asm_parser_state(const char* raw_text_code, unsigned int raw_text_size, unsigned int decoded_instructions_max_count) {
    unsigned int binary_instructions_length = raw_text_size;
    AsmParserState* asm_state = malloc(sizeof(AsmParserState));
    unsigned char* binary_instructions = malloc(sizeof(char) * binary_instructions_length);
    memcpy(binary_instructions, raw_text_code, raw_text_size);

    asm_state->binary_instructions = binary_instructions;
    asm_state->binary_instructions_length = binary_instructions_length;
    asm_state->decoded_instructions = malloc(sizeof(xed_decoded_inst_t) * decoded_instructions_max_count);
    asm_state->decoded_instructions_max_count = decoded_instructions_max_count;
    asm_state->decoded_instructions_count = 0;
    asm_state->instruction_lengths = malloc(sizeof(unsigned int) * decoded_instructions_max_count);
    asm_state->binary_instruction_pointers = malloc(sizeof(unsigned int) * decoded_instructions_max_count);
    asm_state->binary_read_ptr = 0;

    printf("max: %u\n", asm_state->decoded_instructions_max_count);

    if (!xed_initialized) {
        xed_tables_init();
        xed_initialized = true;
    }
    asm_state->xed_machine_mode = XED_MACHINE_MODE_LONG_64;
    asm_state->xed_stack_addr_width = XED_ADDRESS_WIDTH_64b;

    return asm_state;
}

void free_asm_state(AsmParserState* asm_state) {
    free((void*)asm_state->binary_instructions);
    free(asm_state->decoded_instructions);
    free(asm_state->binary_instruction_pointers);
    free(asm_state);
}

void parse_asm(AsmParserState* asm_state) { 
    while (asm_state->binary_read_ptr < asm_state->binary_instructions_length) {
        if (!parse_instruction(asm_state)) {
            asm_state->binary_read_ptr++;
            continue;
        }
    }
}

bool parse_instruction(AsmParserState* asm_state) {
    if (asm_state->decoded_instructions_max_count <= asm_state->decoded_instructions_count) {
        printf("ERROR: Maximum instruction count reached\n");
        exit(1);
    }

    unsigned char bin_instruction[16] = {0};
    unsigned int local_binary_read_ptr = asm_state->binary_read_ptr;
    bool found_valid = false;

    for (unsigned int bytes = 0; bytes < 16; bytes++) {
        xed_error_enum_t error;
        xed_decoded_inst_t instruction;
        xed_decoded_inst_zero(&instruction);
        xed_decoded_inst_set_mode(&instruction, asm_state->xed_machine_mode, asm_state->xed_stack_addr_width);
        error = xed_decode(&instruction, XED_STATIC_CAST(const xed_uint8_t*, bin_instruction), bytes);

        if (error == XED_ERROR_NONE) {
            unsigned int length_bytes = xed_decoded_inst_get_length(&instruction);
            asm_state->decoded_instructions[asm_state->decoded_instructions_count] = instruction;
            asm_state->instruction_lengths[asm_state->decoded_instructions_count] = length_bytes;
            asm_state->binary_instruction_pointers[asm_state->decoded_instructions_count] = asm_state->binary_read_ptr;
            asm_state->decoded_instructions_count++;
            asm_state->binary_read_ptr += length_bytes;
            found_valid = true;
            break;
        }
        bin_instruction[bytes] = asm_state->binary_instructions[local_binary_read_ptr];
        local_binary_read_ptr++;
    }
    
    return found_valid;
}

void skip_zeros(AsmParserState* asm_state) {
    while (asm_state->binary_instructions[asm_state->binary_read_ptr] == 0x00 
            && asm_state->binary_read_ptr < asm_state->binary_instructions_length) {
        asm_state->binary_read_ptr++;
    }
}
