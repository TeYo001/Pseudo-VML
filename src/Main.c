#include "ExeParser.h"
#include "ElfParser.h"
#include "AsmParser.h"
#include "../lib/xed/includes/xed-interface.h"
#include "stdbool.h"
#include "stdio.h"
#include "stdlib.h"
#include "assert.h"

/*
#ifdef _WIN32
#include "ExeParser.h"
#elif __linux__
#include "ElfParser.h"
#endisomethingwrong.hf
*/



int main() {
    FILE* fd = fopen("test/small_bin.bin", "w");
    unsigned char itext[15] = { 0xf, 0x85, 0x99, 0x00, 0x00, 0x00 };
    fwrite(itext, sizeof(char) * 15, 1, fd);
    fclose(fd);

    AsmParserState* asm_state = build_asm_parser_state("test/small_bin.bin", 8);
    parse_asm(asm_state);

    assert(asm_state->decoded_instructions_count == 1);
    assert(asm_state->instruction_lengths[0] == 6);

    printf("SUCCCESS!\n");

    return 0;
}
