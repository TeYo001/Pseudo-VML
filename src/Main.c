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

    AsmParserState* asm_state = build_asm_parser_state(binary_filename, max_instruction_count);
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

int main() {
    ExeInfo* exe_info;
    AsmParserState* asm_state;
    get_all_info_from_exe("test/hello64.exe", "test/temp.bin", "test/objdump.asm", 4096, &exe_info, &asm_state);

    printf("count: %u\n", asm_state->decoded_instructions_count);

    for (int i = 0; i < asm_state->decoded_instructions_count; i++) {
        xed_iclass_enum_t iclass = xed_decoded_inst_get_iclass(&asm_state->decoded_instructions[i]);
        if (iclass == XED_ICLASS_SYSCALL) {
            printf("syscall: %d\n", i);
        } else if (iclass == XED_ICLASS_CALL_NEAR) {
            printf("call: %d\n", i);
            const xed_inst_t* inst = xed_decoded_inst_inst(&asm_state->decoded_instructions[i]);
            xed_operand_enum_t op = xed_operand_name(xed_inst_operand(inst, 1));
            printf("op 0: %s\n", xed_operand_enum_t2str(op));
        } 
        else {
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
