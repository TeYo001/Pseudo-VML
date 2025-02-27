#include "ExeParser.h"
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

int main() {
    const char* EXE_FILENAME = "test/simple64.exe";
    const char* MODIFIED_EXE_FILENAME = "build/modified64.exe";
    const unsigned int MAX_INSTRUCTION_COUNT = 1024 * 1024 * 5; // 5 MiB
    const unsigned int MAX_JUMP_FUNCTION_COUNT = 4096;
    const unsigned int MAX_JUMP_REFERENCE_COUNT = 4096;
    const unsigned int PAYLOAD_SECTION_SIZE = 1024 * 1024 * 10; // 10 MiB
    ExeInfo* exe_info = calloc(1, sizeof(ExeInfo));
    load_exe_file(exe_info, EXE_FILENAME);
    exe_get_header_info(exe_info);
    parse_import_data(exe_info);
    
    AsmParserState* asm_state =
        build_asm_parser_state(exe_info, ".text", MAX_INSTRUCTION_COUNT);
    parse_asm(asm_state);

    JumpTable* jump_table = 
        build_jump_table(exe_info, MAX_JUMP_FUNCTION_COUNT, MAX_JUMP_REFERENCE_COUNT);
    jump_table_find_references(exe_info, asm_state, jump_table);
    
    ModTable* mod_table = 
        build_mod_table(exe_info->exe_file, exe_info->file_size, 16, 16, 16);

    if (!can_push_back_new_section(exe_info)) {
        printf("WARNING: Cannot safely push back new section, information might be overwritten\n");
    }

    char* payload_buffer = calloc(1, PAYLOAD_SECTION_SIZE);
    SectionBuildInfo new_section = {
        .name = ".pvml",
        .data = payload_buffer,
        .data_size = PAYLOAD_SECTION_SIZE,
        .characteristics = IMAGE_SCN_MEM_WRITE | IMAGE_SCN_MEM_READ | IMAGE_SCN_MEM_EXECUTE
    };
    IMAGE_SECTION_HEADER* new_header = build_new_section_push_back(exe_info, &new_section, 4);

    // put processor in payload
    unsigned int entry_point_offset;
    {
        entry_point_offset = build_single_processor(payload_buffer, "build/Process.dll", "fputs_payload");
        printf("entry point offset: 0x%" PRIx32 "\n", entry_point_offset);
    }
    
    // change call to jump instruction
    {
        char* _;
        IMAGE_SECTION_HEADER* text_section = get_section_from_name(exe_info, ".text", &_);

        unsigned int call_inst_idx = 1607;
        InstructionInfo* inst = build_jump_near(text_section,
                asm_state->binary_instruction_pointers[call_inst_idx],
                new_header->VirtualAddress + entry_point_offset);
        unsigned int clearing_length = get_necessary_clearing_length(asm_state, call_inst_idx, sizeof(Instruction_RegJump));
        
        add_instruction(mod_table, inst);
        add_nops(mod_table, 
                text_section->PointerToRawData + asm_state->binary_instruction_pointers[call_inst_idx] + sizeof(Instruction_JumpNear), 
                clearing_length - sizeof(Instruction_JumpNear));
    }

    section_push_back(exe_info, mod_table, &new_section, new_header);

    // finish up executable
    {
        FILE* fd = fopen(MODIFIED_EXE_FILENAME, "w");
        use_mod_table(mod_table, fd);
        fclose(fd);
        unsigned int new_file_size = get_file_size(MODIFIED_EXE_FILENAME);
        fd = fopen(MODIFIED_EXE_FILENAME, "r");
        char* new_data = malloc(new_file_size);
        read_file(fd, new_file_size, &new_data);
        fclose(fd);
        clear_mod_table(mod_table, new_data, new_file_size);
        fix_checksum(MODIFIED_EXE_FILENAME, mod_table);
        fd = fopen(MODIFIED_EXE_FILENAME, "w");
        use_mod_table(mod_table, fd);
        fclose(fd);
    }

    return 0;
}

/*
int main() {
    
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
    IMAGE_SECTION_HEADER* new_header = build_new_section_push_back(exe_info, &new_section, 4, 4);    
    
    unsigned int processor_count = 1;
    unsigned int* processor_entry_points = malloc(sizeof(unsigned int) * processor_count);

    // put processor in payload
    unsigned int entry_point_offset = 0; 
    {
        entry_point_offset = build_single_processor(payload_buffer, "build/Process.dll", "fputs_payload");
        printf("entry point offset: 0x%" PRIx32 "\n", entry_point_offset);
    }

    // change call to jump instruction
    {
        unsigned int call_inst_idx = 1607;
        InstructionInfo* inst = build_jump_near(exe_info->text_section,
                asm_state->binary_instruction_pointers[call_inst_idx],
                new_header->VirtualAddress + entry_point_offset);
        unsigned int clearing_length = get_necessary_clearing_length(asm_state, call_inst_idx, sizeof(Instruction_RegJump));
        
        add_instruction(mod_table, inst);
        add_nops(mod_table, 
                exe_info->text_section->PointerToRawData + asm_state->binary_instruction_pointers[call_inst_idx] + sizeof(Instruction_JumpNear), 
                clearing_length - sizeof(Instruction_JumpNear));

        printf("clearing length: %u\n", clearing_length);
        print_hex(inst->raw_data, inst->data_length);
    }

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
*/
