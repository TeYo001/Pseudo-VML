#include "ExeParser.h"
#include "stdio.h"
#include "stdlib.h"
#include "stdbool.h"
#include "string.h"
#include "sys/stat.h"

/*

typedef struct _IMAGE_NT_HEADERS64 {
    DWORD Signature;
    IMAGE_FILE_HEADER FileHeader;
    IMAGE_OPTIONAL_HEADER64 OptionalHeader;
} IMAGE_NT_HEADERS64, *PIMAGE_NT_HEADERS64;

*/


// NOTE: Only prints the relavent information
static void print_dos_header(const IMAGE_DOS_HEADER* dos_header) {
    printf("### DOS HEADER ###:\n");
    if (dos_header->e_magic == IMAGE_DOS_SIGNATURE) {
        printf("- e_magic (magic number): VALID\n");
    } else {
        printf("- e_magic (magic number): INVALID\n");
    }
    printf("- e_lfanew (NT header file address): %" PRId32 "\n", dos_header->e_lfanew);
}

/*

typedef struct _IMAGE_FILE_HEADER {
    WORD    Machine;
    WORD    NumberOfSections;
    DWORD   TimeDateStamp;
    DWORD   PointerToSymbolTable;
    DWORD   NumberOfSymbols;
    WORD    SizeOfOptionalHeader;
    WORD    Characteristics;
} IMAGE_FILE_HEADER, *PIMAGE_FILE_HEADER;

#define IMAGE_FILE_RELOCS_STRIPPED           0x0001  // Relocation info stripped from file.
#define IMAGE_FILE_EXECUTABLE_IMAGE          0x0002  // File is executable  (i.e. no unresolved externel references).
#define IMAGE_FILE_LINE_NUMS_STRIPPED        0x0004  // Line nunbers stripped from file.
#define IMAGE_FILE_LOCAL_SYMS_STRIPPED       0x0008  // Local symbols stripped from file.
#define IMAGE_FILE_AGGRESIVE_WS_TRIM         0x0010  // Agressively trim working set
#define IMAGE_FILE_LARGE_ADDRESS_AWARE       0x0020  // App can handle >2gb addresses
#define IMAGE_FILE_BYTES_REVERSED_LO         0x0080  // Bytes of machine word are reversed.
#define IMAGE_FILE_32BIT_MACHINE             0x0100  // 32 bit word machine.
#define IMAGE_FILE_DEBUG_STRIPPED            0x0200  // Debugging info stripped from file in .DBG file
#define IMAGE_FILE_REMOVABLE_RUN_FROM_SWAP   0x0400  // If Image is on removable media, copy and run from the swap file.
#define IMAGE_FILE_NET_RUN_FROM_SWAP         0x0800  // If Image is on Net, copy and run from the swap file.
#define IMAGE_FILE_SYSTEM                    0x1000  // System File.
#define IMAGE_FILE_DLL                       0x2000  // File is a DLL.
#define IMAGE_FILE_UP_SYSTEM_ONLY            0x4000  // File should only be run on a UP machine
#define IMAGE_FILE_BYTES_REVERSED_HI         0x8000  // Bytes of machine word are reversed.

*/

static void print_file_header(const IMAGE_FILE_HEADER* file_header) {
    printf("- ### FILE HEADER ###:\n");
    switch (file_header->Machine) {
        case IMAGE_FILE_MACHINE_I386: {
            printf("  - Machine: x86 (NOT SUPPORTED CURRENTLY)\n");
            exit(1);
        } break;
        case IMAGE_FILE_MACHINE_IA64: {
            printf("  - Machine: Intel Itanium (NOT SUPPORTED)\n");
            exit(1);
        } break;
        case IMAGE_FILE_MACHINE_AMD64: {
            printf("  - Machine: x64\n");
        } break;
        default: {
            printf("  - Machine: Unknown / Invalid type of machine\n");
            exit(1);
        } break;
    }

    printf("  - NumberOfSections: %" PRIu16 "\n", file_header->NumberOfSections);
    printf("  - TimeDateStamp (UNIX TIME): %" PRIu32 "\n", file_header->TimeDateStamp);
    printf("  - PointerToSymbolTable: %" PRIu32 "\n", file_header->PointerToSymbolTable);
    printf("  - NumberOfSymbols: %" PRIu32 "\n", file_header->NumberOfSymbols);
    printf("  - SizeOfOptionalHeader: %" PRIu16 "\n", file_header->SizeOfOptionalHeader);
    
    printf("  - Characteristics:\n");
    bool had_invalid_characteristic = false;
    if (file_header->Characteristics & IMAGE_FILE_RELOCS_STRIPPED) {
        printf("   * Relocation info stripped from file\n");
    }
    if (file_header->Characteristics & IMAGE_FILE_EXECUTABLE_IMAGE) {
        printf("   * File is executable (REQUIRED)\n");
    } else {
        printf("File was not executable\n");
        exit(1);
    }
    if (file_header->Characteristics & IMAGE_FILE_LINE_NUMS_STRIPPED) {
        printf("   * Line numbers stripped from file\n");
    }
    if (file_header->Characteristics & IMAGE_FILE_LOCAL_SYMS_STRIPPED) {
        printf("   * Local symbols stripped from file\n");
    }
    if (file_header->Characteristics & IMAGE_FILE_AGGRESIVE_WS_TRIM) {
        printf("   * Aggressively trim working set (OBSOLETE)\n");
    }
    if (file_header->Characteristics & IMAGE_FILE_LARGE_ADDRESS_AWARE) {
        printf("   * App can handle >2gb addresses\n");
    }
    if (file_header->Characteristics & IMAGE_FILE_BYTES_REVERSED_LO) {
        printf("   * Bytes of machine word is reversed (OBSOLETE)\n");
    }
    if (file_header->Characteristics & IMAGE_FILE_32BIT_MACHINE) {
        printf("   * The computer supports 32 bit words\n");
    }
    if (file_header->Characteristics & IMAGE_FILE_DEBUG_STRIPPED) {
        printf("   * Debugging info stripped from file and stored in seperate .DBG file\n");
    }
    if (file_header->Characteristics & IMAGE_FILE_REMOVABLE_RUN_FROM_SWAP) {
        printf("   * If image is on removable media, copy and run from the swap file\n");
    }
    if (file_header->Characteristics & IMAGE_FILE_NET_RUN_FROM_SWAP) {
        printf("   * If image is on the network, copy and run from the swap file\n");
    }
    if (file_header->Characteristics & IMAGE_FILE_SYSTEM) {
        printf("   * Image is a system file (INVALID)\n");
        had_invalid_characteristic = true;
    }
    if (file_header->Characteristics & IMAGE_FILE_DLL) {
        printf("   * Image is a DLL (INVALID)\n");
        had_invalid_characteristic = true;
    }
    if (file_header->Characteristics & IMAGE_FILE_UP_SYSTEM_ONLY) {
        printf("   * File should only run on a uniprocessor computer\n");
    }
    if (file_header->Characteristics & IMAGE_FILE_BYTES_REVERSED_HI) {
        printf("   * Bytes of machine word is reversed (OBSOLETE)\n");
    }
    if (had_invalid_characteristic) {
        printf("File had invalid characteristic[s]\n");
        exit(1);
    }
}

/*

typedef struct _IMAGE_OPTIONAL_HEADER64 {
    WORD        Magic;
    BYTE        MajorLinkerVersion;
    BYTE        MinorLinkerVersion;
    DWORD       SizeOfCode;
    DWORD       SizeOfInitializedData;
    DWORD       SizeOfUninitializedData;
    DWORD       AddressOfEntryPoint;
    DWORD       BaseOfCode;
    ULONGLONG   ImageBase;
    DWORD       SectionAlignment;
    DWORD       FileAlignment;
    WORD        MajorOperatingSystemVersion;
    WORD        MinorOperatingSystemVersion;
    WORD        MajorImageVersion;
    WORD        MinorImageVersion;
    WORD        MajorSubsystemVersion;
    WORD        MinorSubsystemVersion;
    DWORD       Win32VersionValue;
    DWORD       SizeOfImage;
    DWORD       SizeOfHeaders;
    DWORD       CheckSum;
    WORD        Subsystem;
    WORD        DllCharacteristics;
    ULONGLONG   SizeOfStackReserve;
    ULONGLONG   SizeOfStackCommit;
    ULONGLONG   SizeOfHeapReserve;
    ULONGLONG   SizeOfHeapCommit;
    DWORD       LoaderFlags;
    DWORD       NumberOfRvaAndSizes;
    IMAGE_DATA_DIRECTORY DataDirectory[IMAGE_NUMBEROF_DIRECTORY_ENTRIES];
} IMAGE_OPTIONAL_HEADER64, *PIMAGE_OPTIONAL_HEADER64;

*/

static void print_optional_header(const IMAGE_OPTIONAL_HEADER64* optional_header) {
    printf(" - ### OPTIONAL HEADER ###:\n");
    switch (optional_header->Magic) {
        case OPTIONAL_MAGIC_PE32: {
            printf("  - Magic: PE32 (32 bit) (INVALID)\n");
            exit(1);
        } break;
        case OPTIONAL_MAGIC_PE32_PLUS: {
            printf("  - Magic: PE32+ (64 bit)\n");
        } break;
        case OPTIONAL_MAGIC_ROM: {
            printf("  - Magic: ROM (INVALID)\n");
            exit(1);
        } break;
    }
    printf("  - LinkerVersion: %" PRIu8 ".%" PRIu8 "\n", optional_header->MajorLinkerVersion, optional_header->MinorLinkerVersion);
    printf("  - SizeOfCode: %" PRIu32 "\n", optional_header->SizeOfCode);
    printf("  - SizeOfInitializedData: %" PRIu32 "\n", optional_header->SizeOfInitializedData);
    printf("  - SizeOfUninitializedData: %" PRIu32 "\n", optional_header->SizeOfUninitializedData);
    printf("  - AddressOfEntryPoint: %" PRIu32 "\n", optional_header->AddressOfEntryPoint);
    printf("  - BaseOfCode: %" PRIu32, optional_header->BaseOfCode);
    printf("  - ImageBase (IRREVENANT... MOSTLY): %" PRIu64 "\n", optional_header->ImageBase);
    printf("  - SectionAlignment: %" PRIu32 "\n", optional_header->SectionAlignment);
    printf("  - FileAlignment: %" PRIu32 "\n", optional_header->FileAlignment);
    printf("  - OperatingSystemVersion: %" PRIu16 ".%" PRIu16 "\n", optional_header->MajorOperatingSystemVersion, optional_header->MinorOperatingSystemVersion);
    printf("  - ImageVersion: %" PRIu16 ".%" PRIu16 "\n", optional_header->MajorImageVersion, optional_header->MinorImageVersion);
    printf("  - SubsystemVersion: %" PRIu16 ".%" PRIu16 "\n", optional_header->MajorSubsystemVersion, optional_header->MinorSubsystemVersion);
    printf("  - Win32VersionValue: %" PRIu32 "\n", optional_header->Win32VersionValue);
    printf("  - SizeOfImage: %" PRIu32 "\n", optional_header->SizeOfImage);
    printf("  - SizeOfHeaders: %" PRIu32 "\n", optional_header->SizeOfHeaders);
    printf("  - Checksum: %" PRIu32 "\n", optional_header->CheckSum);
    printf("  - Subsystem: %" PRIu16 "\n", optional_header->Subsystem); // TODO(TeYo): Make better
    printf("  - DllCharacteristics: TODO\n"); // TODO(TeYo): Actually finish this part
    printf("  - SizeOfStackReserve: %" PRIu64 "\n", optional_header->SizeOfStackReserve);
    printf("  - SizeOfStackCommit: %" PRIu64 "\n", optional_header->SizeOfStackCommit);
    printf("  - SizeOfHeapReserve: %" PRIu64 "\n", optional_header->SizeOfHeapReserve);
    printf("  - SizeOfHeapCommit: %" PRIu64 "\n", optional_header->SizeOfHeapCommit);
    printf("  - LoaderFlags (OBSOLETE): %" PRIu32 "\n", optional_header->LoaderFlags);
    if (optional_header->NumberOfRvaAndSizes != IMAGE_NUMBEROF_DIRECTORY_ENTRIES) {
        printf("The amount of directory entries listed is not the same number that this program was compiled for.");
        exit(1);
        // TODO(TeYo): Maybe specify the actual numbers
        // TODO(TeYo): Also maybe parse the Directory entries differently?
    }
    else {
        printf("  - NumberOfRvaAndSizes: VALID\n");
    }
    // TODO(TeYo): Maybe print the data directories as well
}

static void print_nt_header(const IMAGE_NT_HEADERS64* nt_header) {
    printf("### NT HEADER ###:\n");
    if (nt_header->Signature == IMAGE_NT_SIGNATURE) {
        printf("- Signature: VALID\n");
    } else {
        printf("- Signature: INVALID\n");
    }

    print_file_header(&nt_header->FileHeader);
    print_optional_header(&nt_header->OptionalHeader);
}

/*

typedef struct _IMAGE_SECTION_HEADER {
    BYTE    Name[IMAGE_SIZEOF_SHORT_NAME];
    union {
            DWORD   PhysicalAddress;
            DWORD   VirtualSize;
    } Misc;
    DWORD   VirtualAddress;
    DWORD   SizeOfRawData;
    DWORD   PointerToRawData;
    DWORD   PointerToRelocations;
    DWORD   PointerToLinenumbers;
    WORD    NumberOfRelocations;
    WORD    NumberOfLinenumbers;
    DWORD   Characteristics;
} IMAGE_SECTION_HEADER, *PIMAGE_SECTION_HEADER;

*/

static void print_section_header(const IMAGE_SECTION_HEADER* section_header) {
    printf("### SECTION HEADER ###:\n");
    printf(" - Name: \"%s\"\n", section_header->Name);
    printf(" - PhysicalAddress / VirtualSize: %" PRIu32 "\n", section_header->Misc.PhysicalAddress);
    printf(" - VirtualAddress: %" PRIu32 "\n", section_header->VirtualAddress);
    printf(" - SizeOfRawData: %" PRIu32 "\n", section_header->SizeOfRawData);
    printf(" - PointerToRawData: %" PRIu32 "\n", section_header->PointerToRawData);
    printf(" - PointerToRelocations: %" PRIu32 "\n", section_header->PointerToRelocations);
    printf(" - PointerToLinenumbers: %" PRIu32 "\n", section_header->PointerToLinenumbers);
    printf(" - NumberOfRelocations: %" PRIu16 "\n", section_header->NumberOfRelocations);
    printf(" - NumberOfLinenumbers: %" PRIu16 "\n", section_header->NumberOfLinenumbers);
    printf(" - Characteristics: TODO\n");
}

static void disassemble_raw_text_code(const char* raw_text_code, 
        int32_t size, 
        const char* out_binary_filename,
        const char* out_asm_filename) {
    FILE* binary_fd = fopen(out_binary_filename, "w");
    FILE* asm_fd = fopen(out_asm_filename, "w");
    char* cmd_str_buffer = malloc(512);

    snprintf(cmd_str_buffer, 2048, "ndisasm -b 64 %s > %s", out_binary_filename, out_asm_filename);
    fwrite(raw_text_code, size, 1, binary_fd);
    
    printf("%s\n", cmd_str_buffer);
    //system(cmd_str_buffer);

    free(cmd_str_buffer);
    fclose(binary_fd);
    fclose(asm_fd);
}

static void find_section(FILE* fd, unsigned int start_offset, const char* section_name, unsigned int file_alignment, IMAGE_SECTION_HEADER** out_section, unsigned int* out_raw_data_file_offset, char**out_raw_data) {
    fseek(fd, start_offset, SEEK_SET);
    char curr = fgetc(fd);
    bool found_section = false;
    while (curr != EOF) {
        if (curr == '.') {
            char buffer[strlen(section_name) + 1];
            fgets(buffer, strlen(section_name) + 1, fd);
            if (strcmp(buffer, section_name) == 0) {
                found_section = true;
                fseek(fd, -(strlen(section_name) + 1), SEEK_CUR);
                break;
            }
        }
        curr = fgetc(fd);
    }
    if (!found_section) {
        printf("couldn't find .%s section\n", section_name);
        exit(1);
    }

    fgets((char*)*out_section, sizeof(IMAGE_SECTION_HEADER), fd);
    print_section_header(*out_section);
    *out_raw_data = malloc((*out_section)->SizeOfRawData);
    fseek(fd, (*out_section)->PointerToRawData, SEEK_SET);
    *out_raw_data_file_offset = ftell(fd);
    unsigned int part_count = (*out_section)->SizeOfRawData / file_alignment;
    if (fread(*out_raw_data, file_alignment, part_count, fd) != part_count) {
        printf("ERROR: couldn't read all data from file\n");
        exit(1);
    }
    fseek(fd, 0, SEEK_SET);
    BYTE byte;
    for (int i = 0; i < (*out_section)->PointerToRawData; i++) {
        if (fread(&byte, 1, 1, fd) != 1) {
            i--;
        }
    }
    printf("ftell: %ld\n", ftell(fd));
    uint8_t test; 
    fread(&test, sizeof(uint8_t), 1, fd);
    printf("test: %" PRIx8 "\n", test);
}

// NOTE(TeYo): This probably wont actually be used, but its a good reminder for how to actually do these kinds of conversions
static unsigned int rva_to_file_offset(unsigned int data_rva, unsigned int section_virtual_address, unsigned int section_file_offset) {
    return data_rva - section_virtual_address + section_file_offset; 
    // fo = rva - sec_va + sec_fo
    // sec_fo = fo - rva + sec_va
}

static void parse_import_descriptors(const char* data, 
        unsigned int data_length,
        IMAGE_IMPORT_DESCRIPTOR** out_descriptors, 
        unsigned int* out_descriptor_count) {
    if (data_length < sizeof(IMAGE_IMPORT_DESCRIPTOR)) {
        printf("ERROR: import data is too small.\n");
        exit(1);
    }

    unsigned int descriptor_count = 0;
    unsigned int read_ptr = 1;
    while (read_ptr < data_length) {
        if (data[read_ptr] == 0x00) {
            break;
        }
        descriptor_count++;
        read_ptr += sizeof(IMAGE_IMPORT_DESCRIPTOR);
    }

    memcpy(*out_descriptors, data, sizeof(IMAGE_IMPORT_DESCRIPTOR) * descriptor_count);
    *out_descriptor_count = descriptor_count;
}

static void parse_import_functions(const char* data,
        unsigned int data_length,
        unsigned int import_virtual_address,
        unsigned int import_file_offset,
        unsigned int thunk_rva,
        DllInfo* out_dll_info) {
    unsigned int read_ptr = thunk_rva - import_virtual_address;
    unsigned int function_count = 0;

    const unsigned int MAX_FUNCTION_COUNT = 128;

    (*out_dll_info).function_names = malloc(sizeof(char*) * MAX_FUNCTION_COUNT);
    (*out_dll_info).hints = malloc(sizeof(WORD) * MAX_FUNCTION_COUNT);

    while (read_ptr < data_length) {
        ULONGLONG ptr = *(ULONGLONG*)(data + read_ptr);
        if (ptr == 0) {
            break;
        }
        if (function_count >= MAX_FUNCTION_COUNT) {
            printf("Max number of functions reached\n");
            exit(1);
        }

        IMAGE_IMPORT_BY_NAME* by_name = (void*)(data + ptr - import_virtual_address);
        unsigned int name_length = 0;
        while (by_name->Name[name_length] == '\0') {
            name_length++;
        }
        
        // print
        printf("func name: %s : ", by_name->Name);
        printf("ptr: %" PRIx64 "\n", import_file_offset + ptr - import_virtual_address);


        // name
        char* name = (*out_dll_info).function_names[function_count];
        name = malloc(name_length);
        memcpy(name, by_name->Name, name_length);

        // pointer (file offset pointer)
        (*out_dll_info).hints[function_count] = by_name->Hint;

        read_ptr += sizeof(ULONGLONG);
        function_count++;
    }

    // function count
    (*out_dll_info).function_count = function_count;
}

static void print_import_descriptor(IMAGE_IMPORT_DESCRIPTOR* descriptor, const char* name, unsigned int import_virtual_address, unsigned int import_file_offset) {
    printf("### IMPORT DESCRIPTOR ###:\n");
    printf("- OriginalFirstThunk: %" PRIx32 " -> 0x%" PRIx32 "\n", descriptor->DUMMYUNIONNAME.OriginalFirstThunk, 
            import_file_offset + descriptor->DUMMYUNIONNAME.OriginalFirstThunk - import_virtual_address);
    printf("- TimeDateStamp: %" PRIu32 "\n", descriptor->TimeDateStamp);
    printf("- ForwarderChain: %" PRIx32 "\n", descriptor->ForwarderChain);
    printf("- Name: %s\n", name);
    printf("- FirstThunk: %" PRIx32 " -> 0x%" PRIx32 "\n", descriptor->FirstThunk,
            import_file_offset + descriptor->FirstThunk - import_virtual_address);
}

static ImportInfo* parse_import_data(const char* import_raw_data, unsigned int data_length, unsigned int import_virtual_address, unsigned int import_file_offset) {
    const unsigned int MAX_DESCRIPTOR_COUNT = 8;
    const unsigned int MAX_FUNCTION_NAME_COUNT = 128;
    const unsigned int MAX_NAME_LENGTH = 512;

    IMAGE_IMPORT_DESCRIPTOR* descriptors = malloc(sizeof(IMAGE_IMPORT_DESCRIPTOR) * MAX_DESCRIPTOR_COUNT);
    unsigned int descriptor_count;
    ImportInfo* import_info = malloc(sizeof(ImportInfo));
    import_info->dll_infos = malloc(sizeof(DllInfo) * MAX_DESCRIPTOR_COUNT);
    import_info->dll_info_count = 0;

    FILE* fd = fopen("test/idata.bin", "w");
    fwrite(import_raw_data, data_length, 1, fd);
    fclose(fd);

    parse_import_descriptors(import_raw_data, data_length, &descriptors, &descriptor_count);

    if (descriptor_count >= MAX_DESCRIPTOR_COUNT) {
        printf("ERROR: Too many dll descriptors\n");
        exit(1);
    }

    for (unsigned int i = 0; i < descriptor_count; i++) {
        print_import_descriptor(&descriptors[i], import_raw_data + descriptors[i].Name - import_virtual_address, import_virtual_address, import_file_offset);
        
        parse_import_functions(import_raw_data, data_length, import_virtual_address, import_file_offset, descriptors[i].FirstThunk, &import_info->dll_infos[i]);
    }

    for (unsigned int i = 0; i < descriptor_count; i++) {
    }

    return import_info;
}

void free_exe_info(ExeInfo* exe_info) {
    free(exe_info->dos_header);
    free(exe_info->nt_header);
    free(exe_info->text_section);
    free(exe_info->raw_text_code);
    free(exe_info->import_section);
    free(exe_info->raw_import_data);
    free_import_info(exe_info->import_info);
    free(exe_info);
}

static void free_dll_info(DllInfo* dll_info) {
    free(dll_info->name);
    for (unsigned int i = 0; i < dll_info->function_count; i++) {
        free(dll_info->function_names[i]);
    }
    free(dll_info->function_names);
    free(dll_info->hints);
    free(dll_info->function_pointers);
    free(dll_info);
}

void free_import_info(ImportInfo* import_info) {
    for (unsigned int i = 0; i < import_info->dll_info_count; i++) {
        free_dll_info(&import_info->dll_infos[i]);
    }
    free(import_info->dll_infos);
    free(import_info);
}

ExeInfo* exe_get_info(const char* filename) {
    FILE* fd = fopen(filename, "rb");
    IMAGE_DOS_HEADER* dos_header = malloc(sizeof(IMAGE_DOS_HEADER));
    IMAGE_NT_HEADERS64* nt_header = malloc(sizeof(IMAGE_NT_HEADERS64));
    IMAGE_SECTION_HEADER* text_section = malloc(sizeof(IMAGE_SECTION_HEADER));
    char* raw_text_code;
    unsigned int raw_text_file_offset;
    IMAGE_SECTION_HEADER* import_section = malloc(sizeof(IMAGE_SECTION_HEADER));
    char* raw_import_data;
    unsigned int raw_import_file_offset;
    unsigned int header_end_offset;

    fgets((char*)dos_header, sizeof(IMAGE_DOS_HEADER), fd);
    print_dos_header(dos_header);
    fseek(fd, dos_header->e_lfanew, SEEK_SET);
    fgets((char*)nt_header, sizeof(IMAGE_NT_HEADERS64), fd);
    header_end_offset = ftell(fd);
    print_nt_header(nt_header);
    find_section(fd, header_end_offset, "text", nt_header->OptionalHeader.FileAlignment, &text_section, &raw_text_file_offset, &raw_text_code);
    find_section(fd, header_end_offset, "idata", nt_header->OptionalHeader.FileAlignment,&import_section, &raw_import_file_offset, &raw_import_data);
    fclose(fd);

    ImportInfo* import_info = parse_import_data(raw_import_data, import_section->SizeOfRawData, import_section->VirtualAddress, raw_import_file_offset);

    ExeInfo* info = malloc(sizeof(ExeInfo));
    info->dos_header = dos_header;
    info->nt_header = nt_header;
    info->text_section = text_section;
    info->raw_text_code = raw_text_code;
    info->raw_text_file_offset = raw_text_file_offset;
    info->import_section = import_section;
    info->raw_import_data = raw_import_data;
    info->raw_import_file_offset = raw_import_file_offset;
    info->import_info = import_info;
    return info;
}






















void exe_visualize(const char* filename) {    
    printf("DEPRICATED\n");
    exit(1);
    printf("opening file: %s\n", filename);

    FILE* fd = fopen(filename, "rb");
    IMAGE_DOS_HEADER* dos_header = malloc(sizeof(IMAGE_DOS_HEADER));
    IMAGE_NT_HEADERS64* nt_header = malloc(sizeof(IMAGE_NT_HEADERS64));
    IMAGE_SECTION_HEADER* text_section = malloc(sizeof(IMAGE_SECTION_HEADER));
    char* raw_text_code;

    fgets((char*)dos_header, sizeof(IMAGE_DOS_HEADER), fd);
    print_dos_header(dos_header);

    fseek(fd, dos_header->e_lfanew, SEEK_SET);
    fgets((char*)nt_header, sizeof(IMAGE_NT_HEADERS64), fd);
    print_nt_header(nt_header);

    char curr = fgetc(fd);
    bool found_text_section = false;
    while (curr != EOF) {
        if (curr == '.') {
            char buffer[5];
            fgets(buffer, 5, fd);
            if (strcmp(buffer, "text") == 0) {
                found_text_section = true;
                fseek(fd, -5, SEEK_CUR);
                break;
            }
        }
        curr = fgetc(fd);
    }
    if (!found_text_section) {
        printf("couldn't find .text section\n");
        exit(1);
    }
    
    fgets((char*)text_section, sizeof(IMAGE_SECTION_HEADER), fd);
    print_section_header(text_section);
    raw_text_code = malloc(text_section->SizeOfRawData);
    fseek(fd, text_section->PointerToRawData, SEEK_SET);
    fgets(raw_text_code, text_section->SizeOfRawData, fd);
    disassemble_raw_text_code(raw_text_code, text_section->SizeOfRawData, "test/temp.bin", "test/dump.asm");

    fclose(fd);
}
