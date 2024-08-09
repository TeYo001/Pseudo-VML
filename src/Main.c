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
    char* objdump_command_str = malloc(sizeof(char) * 512);
    snprintf(objdump_command_str, 512, "objdump -b binary -m i386:x86-64 -D %s > %s", binary_filename, objdump_filename); // TODO(TeYo): filanames are not allowed to contain spaces
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

    uint8_t opcode = *(uint8_t*)(asm_state->binary_instructions + ptr);
    switch (opcode) {
        case 0xe8: {
            break;
            if (length_bytes != 5) {
                printf("ERROR: Impossible instruction length\n");
                exit(1);
            }
            int32_t disp32 = *(int32_t*)(asm_state->binary_instructions + ptr + 1);
            int32_t target = asm_state->text_file_offset + ptr + 5 + disp32;
            printf("current ptr (relative): 0x%" PRIx32 "\n", ptr);
            printf("current ptr (absolute): 0x%" PRIx32 "\n", asm_state->text_file_offset + ptr);
            printf("disp32: 0x%" PRIx32 "\n", disp32);
            printf("target: 0x%" PRIx32 "\n", target);
        } break;
        case 0xff: {
            if (length_bytes != 6) {
                break;
                printf("ERROR: Impossible instruction length\n");
                exit(1);
            }
            uint32_t rel32 = *(uint32_t*)(asm_state->binary_instructions + ptr + 2);
            printf("rel32: 0x%" PRIx32 "\n", rel32);
        } break;
        default: break;
    }
}

int main() {
    ExeInfo* exe_info;
    AsmParserState* asm_state;
    const unsigned int MAX_INSTRUCTION_COUNT = 4096 * 8;
    get_all_info_from_exe("test/hello64_small.exe", "test/temp_small.bin", "test/objdump_small.asm", MAX_INSTRUCTION_COUNT, &exe_info, &asm_state);

    printf(".text file offset: 0x%x\n", exe_info->raw_text_file_offset);
    printf(".import file offset: 0x%x\n", exe_info->raw_import_file_offset);

    // rel32 = target - end of inst

    printf("count: %u\n", asm_state->decoded_instructions_count);

    for (int i = 0; i < asm_state->decoded_instructions_count; i++) {
        xed_iclass_enum_t iclass = xed_decoded_inst_get_iclass(&asm_state->decoded_instructions[i]);
        if (iclass == XED_ICLASS_SYSCALL) {
            printf("syscall: %d\n", i);
        } else if (iclass == XED_ICLASS_SYSCALL_32) {
            printf("syscall 32: %d\n", i);
        } 
        else if (iclass == XED_ICLASS_CALL_NEAR) {
            printf("call %d: ", i);
            if (i > 800) {
                break;
            }
            print_asm_instruction(asm_state, i);
            //print_asm_instruction(asm_state, i);
        } else if (iclass == XED_ICLASS_CALL_FAR) {
            printf("call far %d: ", i);
            print_asm_instruction(asm_state, i);
        }
        else {
            // printf("other %d: %s\n", i, xed_iclass_enum_t2str(iclass));
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
