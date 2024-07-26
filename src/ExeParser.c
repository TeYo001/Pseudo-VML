#include "ExeParser.h"
#include "stdio.h"
#include "stdlib.h"
#include "stdbool.h"
#include "string.h"

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
    char* cmd_str_buffer = malloc(2048);

    snprintf(cmd_str_buffer, 2048, "ndisasm -b 64 %s > %s", out_binary_filename, out_asm_filename);
    fwrite(raw_text_code, size, 1, binary_fd);
    
    printf("%s\n", cmd_str_buffer);
    //system(cmd_str_buffer);

    fclose(binary_fd);
    fclose(asm_fd);
}

void exe_visualize(const char* filename) {
    printf("opening file: %s\n", filename);

    FILE* fd = fopen(filename, "r");
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
