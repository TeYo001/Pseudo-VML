#include "BuildPayload.h"
#include "ExeParser.h"
#include "stdlib.h"
#include "string.h"
#include "PayloadStructure.h"

static unsigned int find_export_table_file_offset(char* file_buffer, unsigned int end_of_nt_header, unsigned int number_of_sections, unsigned int export_table_va) {
    for (int i = 0; i < number_of_sections; i++) {
        IMAGE_SECTION_HEADER* section = (IMAGE_SECTION_HEADER*)(file_buffer + end_of_nt_header + i * sizeof(IMAGE_SECTION_HEADER));
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
    // zero payload info
    {
        char zeroes[PAYLOAD_MAX_INFO_SIZE_BYTES];
        for (int i = 0; i < PAYLOAD_MAX_INFO_SIZE_BYTES; i++) {
            zeroes[i] = 0;
        }
        memcpy(payload_buffer + PAYLOAD_INFO_OFFSET, zeroes, PAYLOAD_MAX_INFO_SIZE_BYTES);
    }
    // insert big string
    {
        char big_str[] = PAYLOAD_BIG_STRING;
        unsigned int size_bytes = sizeof(big_str);
        if (size_bytes >= PAYLOAD_BIG_STRING_MAX_SIZE_BYTES) {
            printf("PAYLOAD ERROR: too large big string\n");
        }
        memcpy(payload_buffer + PAYLOAD_BIG_STRING_OFFSET, big_str, size_bytes);
    }

    FILE* fd = fopen(processor_filename, "r");
    if (fd == NULL) {
        printf("ERROR\n");
        exit(1);
    }
    unsigned int file_size = get_file_size(processor_filename);
    char* file_buffer = malloc(file_size);
    read_file(fd, file_size, &file_buffer);
    fclose(fd);

    IMAGE_DOS_HEADER* dos_header = (IMAGE_DOS_HEADER*)file_buffer;
    if (dos_header->e_magic != IMAGE_DOS_SIGNATURE) {
        printf("PAYLOAD ERROR: invalid dos header\n");
        exit(1);
    }
    IMAGE_NT_HEADERS64* nt_header = (IMAGE_NT_HEADERS64*)(file_buffer + dos_header->e_lfanew);
    if (nt_header->Signature != IMAGE_NT_SIGNATURE) {
        printf("PAYLOAD ERROR: invalid nt header\n");
        exit(1);
    }

    unsigned int text_section_va = 0;
    unsigned int text_section_fo = 0;
    {
        IMAGE_SECTION_HEADER* text_section = (IMAGE_SECTION_HEADER*)(file_buffer + dos_header->e_lfanew + sizeof(IMAGE_NT_HEADERS64));
        text_section_va = text_section->VirtualAddress;
        text_section_fo = text_section->PointerToRawData;
        // insert text section into payload
        memcpy(payload_buffer + PAYLOAD_CODE_OFFSET, file_buffer + text_section_fo, text_section->SizeOfRawData);
    }

    unsigned int export_table_va = nt_header->OptionalHeader.DataDirectory[EXPORT_TABLE_DIRECTORY_ENTRY].VirtualAddress;
    unsigned int number_of_sections = nt_header->FileHeader.NumberOfSections;
    unsigned int export_table_fo = 
        find_export_table_file_offset(file_buffer, dos_header->e_lfanew + sizeof(IMAGE_NT_HEADERS64), number_of_sections, export_table_va);
    IMAGE_EXPORT_DIRECTORY* export_table = (IMAGE_EXPORT_DIRECTORY*)(file_buffer + export_table_fo);
    uint32_t* func_name_va_array = (uint32_t*)(file_buffer + export_table->AddressOfNames - export_table_va + export_table_fo);
    uint16_t* func_name_ordinal_array = (uint16_t*)(file_buffer + export_table->AddressOfNameOrdinals - export_table_va + export_table_fo);
    uint32_t* func_address_array = (uint32_t*)(file_buffer + export_table->AddressOfFunctions - export_table_va + export_table_fo);
    for (int i = 0; i < export_table->NumberOfNames; i++) {
        char* name = (char*)(file_buffer + func_name_va_array[i] - export_table_va + export_table_fo);
        uint16_t ordinal = func_name_ordinal_array[i];
        uint32_t func_address = func_address_array[ordinal];
        if (strcmp(name, entry_point_function_name) == 0) {
            return func_address - text_section_va + PAYLOAD_CODE_OFFSET;
        }
    }
    printf("PAYLOAD ERROR: couldn't find entry point function\n");
    exit(1);
    return 0;
}
