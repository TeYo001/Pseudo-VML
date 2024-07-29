#include "ExeParser.h"
#include "ElfParser.h"
#include "../lib/xed/includes/xed-interface.h"
#include "stdbool.h"
#include "stdio.h"

/*
#ifdef _WIN32
#include "ExeParser.h"
#elif __linux__
#include "ElfParser.h"
#endisomethingwrong.hf
*/

int main() {
    xed_machine_mode_enum_t machine_mode;
    xed_address_width_enum_t stack_addr_width;
    bool long_mode = false;
    unsigned char bin_instruction[15] = {0xf, 0x85, 0x99, 0x00, 0x00, 0x00 };

    xed_tables_init();
    if (long_mode) {
        machine_mode = XED_MACHINE_MODE_LONG_64;
        stack_addr_width = XED_ADDRESS_WIDTH_64b;
    } else {
        machine_mode = XED_MACHINE_MODE_LEGACY_32;
        stack_addr_width = XED_ADDRESS_WIDTH_32b;
    }
    
    for (unsigned int bytes = 0; bytes < 16; bytes++) {
        xed_error_enum_t error;
        xed_decoded_inst_t instruction;
        xed_decoded_inst_zero(&instruction);
        xed_decoded_inst_set_mode(&instruction, machine_mode, stack_addr_width);
        error = xed_decode(&instruction, XED_STATIC_CAST(const xed_uint8_t*, bin_instruction), bytes);

        if (error == XED_ERROR_NONE) {
            xed_iclass_enum_t iclass = xed_decoded_inst_get_iclass(&instruction);
            printf("iclass: %s\n", xed_iclass_enum_t2str(iclass));
            unsigned int length_bytes = xed_decoded_inst_get_length(&instruction);
            printf("instruction length: %u\n", length_bytes);
            break;
        }
    }
    
    return 0;
}
