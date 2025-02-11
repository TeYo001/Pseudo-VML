#include "BuildPayload.h"
#include "ExeParser.h"
#include "stdlib.h"
#include "string.h"

static unsigned int find_export_table_file_offset(char* payload_buffer, unsigned int end_of_nt_header, unsigned int number_of_sections, unsigned int export_table_va) {
    for (int i = 0; i < number_of_sections; i++) {
        IMAGE_SECTION_HEADER* section = (IMAGE_SECTION_HEADER*)(payload_buffer + end_of_nt_header + i * sizeof(IMAGE_SECTION_HEADER));
        if (section->VirtualAddress == export_table_va) {
            return section->PointerToRawData;
        }
    }
    printf("ERROR: couldn't find export table\n");
    exit(1);
    return 0;
}

// returns entry point offset
unsigned int build_single_processor(char* payload_buffer, const char* processor_filename, const char* entry_point_function_name) {
    printf("payload_str: %s\n", payload_buffer);
    FILE* fd = fopen(processor_filename, "r");
    if (fd == NULL) {
        printf("ERROR\n");
        return;
    }
    unsigned int file_size = get_file_size(processor_filename);
    printf("file size: %u\n", file_size);
    read_file(fd, file_size, &payload_buffer);
    printf("file read\n");
    fclose(fd);

    IMAGE_DOS_HEADER* dos_header = (IMAGE_DOS_HEADER*)payload_buffer;
    if (dos_header->e_magic != IMAGE_DOS_SIGNATURE) {
        printf("PAYLOAD ERROR: invalid dos header\n");
        exit(1);
    }
    IMAGE_NT_HEADERS64* nt_header = (IMAGE_NT_HEADERS64*)(payload_buffer + dos_header->e_lfanew);
    if (nt_header->Signature != IMAGE_NT_SIGNATURE) {
        printf("PAYLOAD ERROR: invalid nt header\n");
        exit(1);
    }

    unsigned int text_section_va = 0;
    unsigned int text_section_fo = 0;
    {
        IMAGE_SECTION_HEADER* text_section = (IMAGE_SECTION_HEADER*)(payload_buffer + dos_header->e_lfanew + sizeof(IMAGE_NT_HEADERS64));
        text_section_va = text_section->VirtualAddress;
        text_section_fo = text_section->PointerToRawData;
    }

    unsigned int export_table_va = nt_header->OptionalHeader.DataDirectory[EXPORT_TABLE_DIRECTORY_ENTRY].VirtualAddress;
    unsigned int number_of_sections = nt_header->FileHeader.NumberOfSections;
    unsigned int export_table_fo = 
        find_export_table_file_offset(payload_buffer, dos_header->e_lfanew + sizeof(IMAGE_NT_HEADERS64), number_of_sections, export_table_va);
    IMAGE_EXPORT_DIRECTORY* export_table = (IMAGE_EXPORT_DIRECTORY*)(payload_buffer + export_table_fo);
    uint32_t* func_name_va_array = (uint32_t*)(payload_buffer + export_table->AddressOfNames - export_table_va + export_table_fo);
    uint16_t* func_name_ordinal_array = (uint16_t*)(payload_buffer + export_table->AddressOfNameOrdinals - export_table_va + export_table_fo);
    uint32_t* func_address_array = (uint32_t*)(payload_buffer + export_table->AddressOfFunctions - export_table_va + export_table_fo);
    for (int i = 0; i < export_table->NumberOfNames; i++) {
        char* name = (char*)(payload_buffer + func_name_va_array[i] - export_table_va + export_table_fo);
        uint16_t ordinal = func_name_ordinal_array[i];
        uint32_t func_address = func_address_array[ordinal];
        if (strcmp(name, entry_point_function_name) == 0) {
            return func_address - text_section_va + text_section_fo;
        }
    }

    printf("PAYLOAD ERROR: couldn't find entry point function\n");
    exit(1);
    return 0;
}
