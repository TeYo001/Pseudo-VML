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

void get_all_info_from_exe(const char* exe_filename, const char* binary_filename, const char* objdump_filename, unsigned int max_instruction_count, 
            ExeInfo** out_exe_info, AsmParserState** out_asm_state) {
    ExeInfo* exe_info = exe_get_info(exe_filename);
    
    FILE* bin_fd = fopen(binary_filename, "w");
    fwrite(exe_info->raw_text_code, exe_info->text_section->SizeOfRawData, 1, bin_fd);
    fclose(bin_fd);

    // objdump -b binary -m i386:x86-64 -D temp.bin > something.asm
    char* objdump_command_str = malloc(sizeof(char) * 4096);
    snprintf(objdump_command_str, 4096, "objdump -b binary -m i386:x86-64 -D %s > %s", binary_filename, objdump_filename); // TODO(TeYo): filanames are not allowed to contain spaces
    system(objdump_command_str);

    AsmParserState* asm_state = build_asm_parser_state(binary_filename, max_instruction_count, exe_info->raw_text_file_offset);
    parse_asm(asm_state);

    if (out_exe_info != NULL) {
        *out_exe_info = exe_info;
    } else {
        free_exe_info(exe_info);
    }
    if (out_asm_state != NULL) {
        *out_asm_state = asm_state;
    } else {
        free_asm_state(asm_state);
    }
}

void print_asm_instruction(AsmParserState* asm_state, unsigned int index) {
    xed_decoded_inst_t* inst = &asm_state->decoded_instructions[index];
    unsigned int length_bytes = asm_state->instruction_lengths[index];
    xed_iclass_enum_t iclass = xed_decoded_inst_get_iclass(inst);
    unsigned int ptr = asm_state->binary_instruction_pointers[index];
    
    printf("0x");
    for (int i = 0; i < length_bytes; i++) {
        printf("%1x", asm_state->binary_instructions[ptr + i]);
    }
    printf(" | %s: length: %u, ptr: 0x%x\n", xed_iclass_enum_t2str(iclass), length_bytes, ptr);

    uint16_t opcode = *(uint16_t*)(asm_state->binary_instructions + ptr); 
    if (opcode == 0x15FF) {
        uint16_t rel32 = *(uint16_t*)(asm_state->binary_instructions + ptr + 2);
        unsigned int end_of_instruction_ptr = ptr + asm_state->text_file_offset + length_bytes;
        printf("rel32: 0x%2x -> 0x%x\n", rel32, 0);
        printf("end of instruction ptr: 0x%2x\n", end_of_instruction_ptr);
        printf("target: 0x%x\n", rel32 + end_of_instruction_ptr); // rel32 = target - end_of_instruction_ptr // NOTE(TeYo): Probably actually disp32 or even disp64 idk
        printf("calculation: 0x%x\n", 0xbfa600 + ptr + length_bytes);
    }
}

int main() {
    ExeInfo* exe_info;
    AsmParserState* asm_state;
    get_all_info_from_exe("test/hello64.exe", "test/temp.bin", "test/objdump.asm", 4096, &exe_info, &asm_state);

    printf(".text file offset: 0x%x\n", exe_info->raw_text_file_offset);
    printf(".import file offset: 0x%x\n", exe_info->raw_import_file_offset);

    // rel32 = target - end of inst

    printf("count: %u\n", asm_state->decoded_instructions_count);

    for (int i = 0; i < asm_state->decoded_instructions_count; i++) {
        xed_iclass_enum_t iclass = xed_decoded_inst_get_iclass(&asm_state->decoded_instructions[i]);
        if (iclass == XED_ICLASS_SYSCALL) {
            printf("syscall: %d\n", i);
        } 
        else if (iclass == XED_ICLASS_CALL_NEAR) {
            printf("call %d: ", i);
            print_asm_instruction(asm_state, i);
        } else {
            //printf("other: %s\n", xed_iclass_enum_t2str(iclass));
        }
    }

    /*
    AsmParserState* asm_state = build_asm_parser_state("test/temp.bin", 4096);
    parse_asm(asm_state);

    printf("count: %u\n", asm_state->decoded_instructions_count);

    for (int i = 0; i < asm_state->decoded_instructions_count; i++) {
        xed_decoded_inst_t* instruction = &asm_state->decoded_instructions[i];
        printf("%d: %s\n", i, xed_iclass_enum_t2str(xed_decoded_inst_get_iclass(instruction)));
    }

    printf("SUCCCESS!\n");
    */

    return 0;
}
