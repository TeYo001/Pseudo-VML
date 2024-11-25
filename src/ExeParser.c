#include "ExeParser.h"
#include "stdio.h"
#include "stdlib.h"
#include "stdbool.h"
#include "string.h"
#include "sys/stat.h"
#include "math.h"
#include "FileEditor.h"

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

static void print_data_directory(const char* name, const IMAGE_DATA_DIRECTORY* data_entry) {
    printf("  - ### DATA DIRECTORY ENTRY: %s ###:\n", name);
    printf("   - Virtual Address: %" PRIx32 "\n", data_entry->VirtualAddress);
    printf("   - Size: %" PRIu32 "\n", data_entry->Size);
}

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
    printf("  - AddressOfEntryPoint: 0x%" PRIx32 "\n", optional_header->AddressOfEntryPoint);
    printf("  - BaseOfCode: 0x%" PRIx32 "\n", optional_header->BaseOfCode);
    printf("  - ImageBase : 0x%" PRIx64 "\n", optional_header->ImageBase);
    printf("  - SectionAlignment: %" PRIu32 "\n", optional_header->SectionAlignment);
    printf("  - FileAlignment: %" PRIu32 "\n", optional_header->FileAlignment);
    printf("  - OperatingSystemVersion: %" PRIu16 ".%" PRIu16 "\n", optional_header->MajorOperatingSystemVersion, optional_header->MinorOperatingSystemVersion);
    printf("  - ImageVersion: %" PRIu16 ".%" PRIu16 "\n", optional_header->MajorImageVersion, optional_header->MinorImageVersion);
    printf("  - SubsystemVersion: %" PRIu16 ".%" PRIu16 "\n", optional_header->MajorSubsystemVersion, optional_header->MinorSubsystemVersion);
    printf("  - Win32VersionValue: %" PRIu32 "\n", optional_header->Win32VersionValue);
    printf("  - SizeOfImage: %" PRIu32 "\n", optional_header->SizeOfImage);
    printf("  - SizeOfHeaders: %" PRIu32 "\n", optional_header->SizeOfHeaders);
    printf("  - Checksum: 0x%" PRIx32 "\n", optional_header->CheckSum);
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
    }
    else {
        printf("  - NumberOfRvaAndSizes: VALID\n");
    }

    // print data directories
    {
        print_data_directory("Export Table", &optional_header->DataDirectory[EXPORT_TABLE_DIRECTORY_ENTRY]);
        print_data_directory("Import Table", &optional_header->DataDirectory[IMPORT_TABLE_DIRECTORY_ENTRY]);
        print_data_directory("Resource Table Directory", &optional_header->DataDirectory[RESOURCE_TABLE_DIRECTORY_ENTRY]);
        print_data_directory("Exception Table Directory", &optional_header->DataDirectory[EXCEPTION_TABLE_DIRECTORY_ENTRY]);
        print_data_directory("Attribute Certificate Table", &optional_header->DataDirectory[ATTRIBUTE_CERTIFICATE_TABLE_ENTRY]);
        print_data_directory("Base Relocation Table", &optional_header->DataDirectory[BASE_RELOCATION_TABLE_ENTRY]);
        print_data_directory("Debug Data Table", &optional_header->DataDirectory[DEBUG_DATA_TABLE_ENTRY]);
        print_data_directory("Architecture Table", &optional_header->DataDirectory[ARCHITECTURE_TABLE_ENTRY]);
        print_data_directory("Global Pointer Table", &optional_header->DataDirectory[GLOBAL_POINTER_TABLE_ENTRY]);
        print_data_directory("Thread Local Storage Table", &optional_header->DataDirectory[THREAD_LOCAL_STORAGE_TABLE_ENTRY]);
        print_data_directory("Load Configuration Table", &optional_header->DataDirectory[LOAD_CONFIGURATION_TABLE_ENTRY]);
        print_data_directory("Bound Import Table", &optional_header->DataDirectory[BOUND_IMPORT_TABLE_ENTRY]);
        print_data_directory("Import Address Table", &optional_header->DataDirectory[IMPORT_ADDRESS_TABLE_ENTRY]);
        print_data_directory("Delay Import Descriptor Table", &optional_header->DataDirectory[DELAY_IMPORT_DESCRIPTOR_ENTRY]);
        print_data_directory("Com Runtime Header", &optional_header->DataDirectory[COM_RUNTIME_HEADER_ENTRY]);
    }
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

/*
#define IMAGE_SCN_CNT_CODE                   0x00000020  // Section contains code.
#define IMAGE_SCN_CNT_INITIALIZED_DATA       0x00000040  // Section contains initialized data.
#define IMAGE_SCN_CNT_UNINITIALIZED_DATA     0x00000080  // Section contains uninitialized data.
#define IMAGE_SCN_LNK_INFO                   0x00000200  // Section contains comments or some other type of information.
#define IMAGE_SCN_LNK_REMOVE                 0x00000800  // Section contents will not become part of image.
#define IMAGE_SCN_LNK_COMDAT                 0x00001000  // Section contents comdat.
#define IMAGE_SCN_NO_DEFER_SPEC_EXC          0x00004000  // Reset speculative exceptions handling bits in the TLB entries for this section.
#define IMAGE_SCN_GPREL                      0x00008000  // Section content can be accessed relative to GP
#define IMAGE_SCN_LNK_NRELOC_OVFL            0x01000000  // Section contains extended relocations.
#define IMAGE_SCN_MEM_DISCARDABLE            0x02000000  // Section can be discarded.
#define IMAGE_SCN_MEM_NOT_CACHED             0x04000000  // Section is not cachable.
#define IMAGE_SCN_MEM_NOT_PAGED              0x08000000  // Section is not pageable.
#define IMAGE_SCN_MEM_SHARED                 0x10000000  // Section is shareable.
#define IMAGE_SCN_MEM_EXECUTE                0x20000000  // Section is executable.
#define IMAGE_SCN_MEM_READ                   0x40000000  // Section is readable.
#define IMAGE_SCN_MEM_WRITE                  0x80000000  // Section is writeable.
#define IMAGE_SCN_SCALE_INDEX                0x00000001  // Tls index is scaled
*/

static void print_section_header(const IMAGE_SECTION_HEADER* section_header) {
    printf("### SECTION HEADER ###:\n");
    if (section_header->Name[0] == '\0') {
        printf("test: %s\n", section_header->Name + 1);
    }
    printf(" - Name: \"%s\"\n", section_header->Name);
    printf(" - PhysicalAddress / VirtualSize: 0x%" PRIx32 "\n", section_header->Misc.PhysicalAddress);
    printf(" - VirtualAddress: 0x%" PRIx32 "\n", section_header->VirtualAddress);
    printf(" - SizeOfRawData: %" PRIu32 "\n", section_header->SizeOfRawData);
    printf(" - PointerToRawData: 0x%" PRIx32 "\n", section_header->PointerToRawData);
    printf(" - PointerToRelocations: %" PRIu32 "\n", section_header->PointerToRelocations);
    printf(" - PointerToLinenumbers: %" PRIu32 "\n", section_header->PointerToLinenumbers);
    printf(" - NumberOfRelocations: %" PRIu16 "\n", section_header->NumberOfRelocations);
    printf(" - NumberOfLinenumbers: %" PRIu16 "\n", section_header->NumberOfLinenumbers);
    printf(" - ### CHARACTERISTICS ###:\n");
    // NOTE(TeYo): This is some fine ass pointer arithmatic if I've even seen one
    uint8_t align_byte = *((uint8_t*)&section_header->Characteristics + 2);
    
    unsigned int alignment = 16;
    if (align_byte != 0) {
        alignment = 1 << (((unsigned int)align_byte / 16) - 1);
    }
    printf("  - Alignment: %u\n", alignment);
    if (section_header->Characteristics & IMAGE_SCN_CNT_CODE) {
        printf("  - Contains Code\n");
    }
    if (section_header->Characteristics & IMAGE_SCN_CNT_INITIALIZED_DATA) {
        printf("  - Contains Initialized Data\n");
    }    
    if (section_header->Characteristics & IMAGE_SCN_CNT_UNINITIALIZED_DATA) {
        printf("  - Contains Uninitialized Data\n");
    }
    if (section_header->Characteristics & IMAGE_SCN_LNK_INFO) {
        printf("  - Contains Comments (and similar info)\n");
    }
    if (section_header->Characteristics & IMAGE_SCN_LNK_REMOVE) {
        printf("  - Section Contents Will Not Become Part of Image\n");
    }
    if (section_header->Characteristics & IMAGE_SCN_LNK_COMDAT) {
        printf("  - Section Contents ComDat\n");
    }
    if (section_header->Characteristics & IMAGE_SCN_NO_DEFER_SPEC_EXC) {
        printf("  - Reset Speculative Exceptions Handling bits\n");
    }
    if (section_header->Characteristics & IMAGE_SCN_GPREL) {
        printf("  - Section Contents Can Be Accesses Relative To GP\n");
    }
    if (section_header->Characteristics & IMAGE_SCN_LNK_NRELOC_OVFL) {
        printf("  - Contains Extented Relocations\n");
    }
    if (section_header->Characteristics & IMAGE_SCN_MEM_DISCARDABLE) {
        printf("  - Can Be Discarded\n");
    }
    if (section_header->Characteristics & IMAGE_SCN_MEM_NOT_CACHED) {
        printf("  - Not Cashable\n");
    }
    if (section_header->Characteristics & IMAGE_SCN_MEM_NOT_PAGED) {
        printf("  - Not Pageable\n");
    }
    if (section_header->Characteristics & IMAGE_SCN_MEM_SHARED) {
        printf("  - Sharable\n");
    }
    if (section_header->Characteristics & IMAGE_SCN_MEM_EXECUTE) {
        printf("  - Executable\n");
    }
    if (section_header->Characteristics & IMAGE_SCN_MEM_READ) {
        printf("  - Readable\n");
    }
    if (section_header->Characteristics & IMAGE_SCN_MEM_WRITE) {
        printf("  - Writable\n");
    }
    if (section_header->Characteristics & IMAGE_SCN_SCALE_INDEX) {
        printf("  - TLS Index Is Scaled\n");
    }
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
        unsigned int data_offset,
        unsigned int data_length,
        IMAGE_IMPORT_DESCRIPTOR** out_descriptors,
        unsigned int* out_descriptor_count) {
    if (data_length < sizeof(IMAGE_IMPORT_DESCRIPTOR)) {
        printf("ERROR: import data is too small.\n");
        exit(1);
    }
        
    unsigned int descriptor_count = 0;
    unsigned int read_ptr = 1 + data_offset;
    while (read_ptr - data_offset < data_length) {
        if (data[read_ptr] == 0x00) {
            break;
        }
        descriptor_count++;
        read_ptr += sizeof(IMAGE_IMPORT_DESCRIPTOR);
    }

    memcpy(*out_descriptors, data + data_offset, sizeof(IMAGE_IMPORT_DESCRIPTOR) * descriptor_count);
    *out_descriptor_count = descriptor_count;
}

static void parse_import_functions(const char* data,
        unsigned int data_length,
        unsigned int parent_virtual_address,
        unsigned int parent_file_offset,
        unsigned int thunk_rva,
        DllInfo* out_dll_info) {
    unsigned int read_ptr = thunk_rva - parent_virtual_address;
    unsigned int function_count = 0;

    const unsigned int MAX_FUNCTION_COUNT = 512;
    
    (*out_dll_info).function_names = malloc(sizeof(char*) * MAX_FUNCTION_COUNT);
    (*out_dll_info).function_pointers = malloc(sizeof(ULONGLONG) * MAX_FUNCTION_COUNT);
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

        IMAGE_IMPORT_BY_NAME* by_name = (void*)(data + ptr - parent_virtual_address);
        unsigned int name_length = strlen(by_name->Name);
        
        // print
        
        // TODO(TeYo): Make so that you can toggle these kinds of things from main
        /*
        printf("func name: %s : ", by_name->Name);
        printf("ptr: %" PRIx64 " : ", parent_file_offset + ptr - parent_virtual_address);
        printf("ptr (raw): %" PRIx64 "\n", ptr);
        */

        // name
        char* name = malloc(name_length + 1);
        memcpy(name, by_name->Name, name_length + 1);
        (*out_dll_info).function_names[function_count] = name;
        (*out_dll_info).function_pointers[function_count] = (uint64_t)read_ptr + parent_virtual_address;
        (*out_dll_info).hints[function_count] = by_name->Hint;

        read_ptr += sizeof(ULONGLONG);
        function_count++;
    }

    // function count
    (*out_dll_info).function_count = function_count;
}

static void print_import_descriptor(IMAGE_IMPORT_DESCRIPTOR* descriptor, const char* name, unsigned int import_virtual_address, unsigned int import_file_offset) {
    printf("### IMPORT DESCRIPTOR ###:\n");
    printf("- OriginalFirstThunk: 0x%" PRIx32 " -> 0x%" PRIx32 "\n", descriptor->DUMMYUNIONNAME.OriginalFirstThunk, 
            import_file_offset + descriptor->DUMMYUNIONNAME.OriginalFirstThunk - import_virtual_address);
    printf("- TimeDateStamp: %" PRIu32 "\n", descriptor->TimeDateStamp);
    printf("- ForwarderChain: 0x%" PRIx32 "\n", descriptor->ForwarderChain);
    printf("- Name: %s\n", name);
    printf("- FirstThunk: 0x%" PRIx32 " -> 0x%" PRIx32 "\n", descriptor->FirstThunk,
            import_file_offset + descriptor->FirstThunk - import_virtual_address);
}

static ImportInfo* parse_import_data(IMAGE_NT_HEADERS64* nt_header, FILE* fd, IMAGE_SECTION_HEADER** all_sections) {
    const unsigned int MAX_DESCRIPTOR_COUNT = 16;
    const unsigned int MAX_NAME_LENGTH = 512;

    unsigned int import_rva = nt_header->OptionalHeader.DataDirectory[IMPORT_TABLE_DIRECTORY_ENTRY].VirtualAddress;
    unsigned int data_length = nt_header->OptionalHeader.DataDirectory[IMPORT_TABLE_DIRECTORY_ENTRY].Size;
    
    printf("data length: 0x%" PRIx32 "\n", data_length);

    IMAGE_SECTION_HEADER* parent_section = NULL;
    for (unsigned int i = 0; i < nt_header->FileHeader.NumberOfSections; i++) {
        if (all_sections[i]->VirtualAddress > import_rva) {
            continue;
        }
        parent_section = all_sections[i];
    }
    if (parent_section == NULL) {
        printf("ERROR: Couldn't find parent section for import table\n");
        exit(1);
    }

    unsigned int import_virtual_address = import_rva - parent_section->VirtualAddress;
    unsigned int import_file_offset = import_virtual_address + parent_section->PointerToRawData;

    char* parent_raw_data = malloc(parent_section->SizeOfRawData);
    fseek(fd, parent_section->PointerToRawData, SEEK_SET);
    read_file(fd, parent_section->SizeOfRawData, &parent_raw_data);
    
    printf("import virtual address: 0x%" PRIx32 "\n", import_virtual_address);
    printf("import file offset: 0x%" PRIx32 "\n", import_file_offset);
    printf("parent virtual address: 0x%" PRIx32 "\n", parent_section->VirtualAddress);
    printf("parent file offset: 0x%" PRIx32 "\n", parent_section->PointerToRawData);

    IMAGE_IMPORT_DESCRIPTOR* descriptors = malloc(sizeof(IMAGE_IMPORT_DESCRIPTOR) * MAX_DESCRIPTOR_COUNT);
    unsigned int descriptor_count;
    ImportInfo* import_info = malloc(sizeof(ImportInfo));
    import_info->parent_virtual_address = parent_section->VirtualAddress;
    import_info->dll_infos = malloc(sizeof(DllInfo) * MAX_DESCRIPTOR_COUNT);
    import_info->dll_info_count = 0;

    parse_import_descriptors(parent_raw_data, import_file_offset - parent_section->PointerToRawData, data_length, &descriptors, &descriptor_count);
    import_info->dll_info_count = descriptor_count;

    if (descriptor_count > MAX_DESCRIPTOR_COUNT) {
        printf("ERROR: Too many dll descriptors\n");
        exit(1);
    }
    
    for (unsigned int i = 0; i < descriptor_count; i++) {
        const char* name = parent_raw_data + descriptors[i].Name - parent_section->VirtualAddress;
        print_import_descriptor(&descriptors[i], name, import_virtual_address, import_file_offset);
        import_info->dll_infos[i].name = malloc(sizeof(char) * MAX_NAME_LENGTH);
        memcpy(import_info->dll_infos[i].name, name, strlen(name) + 1); 
        parse_import_functions(parent_raw_data, 
                parent_section->SizeOfRawData, 
                parent_section->VirtualAddress,
                parent_section->PointerToRawData,
                descriptors[i].FirstThunk,&import_info->dll_infos[i]);
    }
    
    return import_info;
}

static void find_all_sections(FILE* fd, 
        unsigned int header_end_offset, 
        unsigned int section_count,
        unsigned int file_alignment,
        IMAGE_SECTION_HEADER*** out_section_header_list) {
    IMAGE_SECTION_HEADER** section_header_list = malloc(sizeof(void*) * section_count);
    IMAGE_SECTION_HEADER* current_section_header;
    unsigned int read_ptr = header_end_offset + 1;
    for (int i = 0; i < section_count; i++) {
        current_section_header = malloc(sizeof(IMAGE_SECTION_HEADER));
        fseek(fd, read_ptr, SEEK_SET);
        fgets((char*)current_section_header, sizeof(IMAGE_SECTION_HEADER), fd);
        section_header_list[i] = current_section_header;
        //print_section_header(current_section_header);
        read_ptr += SECTION_TABLE_ENTRY_SIZE;
    }
    (*out_section_header_list) = section_header_list;
}

static IMAGE_SECTION_HEADER* get_section(unsigned int section_index, 
        FILE* fd, 
        IMAGE_SECTION_HEADER** all_sections, 
        unsigned int section_count,
        unsigned int file_alignment, 
        unsigned int* out_raw_file_offset, 
        char** out_raw_data) {
    IMAGE_SECTION_HEADER* header = all_sections[section_index];
    char* raw_data = malloc(header->SizeOfRawData);
    fseek(fd, header->PointerToRawData, SEEK_SET);
    *out_raw_file_offset = ftell(fd);
    unsigned int part_count = header->SizeOfRawData / file_alignment;
    if (fread(raw_data, file_alignment, part_count, fd) != part_count) {
        printf("ERROR: Couldn't read section data\n");
        exit(1);
    }
    *out_raw_data = raw_data;
    return header;
}

static void make_section_name(const char* section_name, BYTE** out_name) {
    unsigned int length = strlen(section_name);
    if (length >= IMAGE_SIZEOF_SHORT_NAME) {
        printf("ERROR: Section name is too large to be made\n");
        exit(1);
    }
    for (unsigned int i = 0; i < length; i++) {
        (*out_name)[i] = section_name[i];
    }
}

void free_exe_info(ExeInfo* exe_info) {
    for (unsigned int i = 0; i < exe_info->nt_header->FileHeader.NumberOfSections; i++) {
        free(exe_info->all_sections[i]);
    }
    free(exe_info->all_sections);
    free(exe_info->dos_header);
    free(exe_info->nt_header);
    free(exe_info->raw_text_code);
    //free(exe_info->raw_import_data);
    //free_import_info(exe_info->import_info);
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

/*
ExeInfo* exe_get_info(const char* filename) {
    FILE* fd = fopen(filename, "rb");
    IMAGE_DOS_HEADER* dos_header = malloc(sizeof(IMAGE_DOS_HEADER));
    IMAGE_NT_HEADERS64* nt_header = malloc(sizeof(IMAGE_NT_HEADERS64));
    IMAGE_SECTION_HEADER* text_section;
    char* raw_text_code;
    unsigned int raw_text_file_offset;
    IMAGE_SECTION_HEADER* import_section;
    char* raw_import_data;
    unsigned int raw_import_file_offset;
    unsigned int header_end_offset;
    IMAGE_SECTION_HEADER** section_header_list;

    unsigned int file_size = 0;
    {
        struct stat file_stats = {0};
        stat(filename, &file_stats);
        file_size = file_stats.st_size;
    }

    fgets((char*)dos_header, sizeof(IMAGE_DOS_HEADER), fd);
    print_dos_header(dos_header);
    fseek(fd, dos_header->e_lfanew, SEEK_SET);
    fgets((char*)nt_header, sizeof(IMAGE_NT_HEADERS64), fd);
    header_end_offset = ftell(fd);
    print_nt_header(nt_header);
    find_all_sections(fd, header_end_offset, nt_header->FileHeader.NumberOfSections, nt_header->OptionalHeader.FileAlignment, &section_header_list);
    BYTE* text_section_name = malloc(IMAGE_SIZEOF_SHORT_NAME);
    BYTE* import_section_name = malloc(IMAGE_SIZEOF_SHORT_NAME);
    make_section_name(".text", (BYTE**)&text_section_name);
    make_section_name(".idata", (BYTE**)&import_section_name);
    text_section = get_section(text_section_name, fd, section_header_list, nt_header->FileHeader.NumberOfSections, nt_header->OptionalHeader.FileAlignment, &raw_text_file_offset, &raw_text_code);
    import_section = get_section(import_section_name, fd, section_header_list, nt_header->FileHeader.NumberOfSections, nt_header->OptionalHeader.FileAlignment, &raw_import_file_offset, &raw_import_data);
    fclose(fd);

    for (unsigned int i = 0; i < nt_header->FileHeader.NumberOfSections; i++) {
        print_section_header(section_header_list[i]);
    }

    ImportInfo* import_info = parse_import_data(raw_import_data, 
            import_section->SizeOfRawData, 
            import_section->VirtualAddress, 
            raw_import_file_offset,
            raw_text_code,
            text_section->VirtualAddress,
            raw_text_file_offset,
            nt_header->OptionalHeader.AddressOfEntryPoint);

    ExeInfo* info = malloc(sizeof(ExeInfo));
    info->dos_header = dos_header;
    info->nt_header = nt_header;
    info->text_section = text_section;
    info->raw_text_code = raw_text_code;
    info->raw_text_file_offset = raw_text_file_offset;
    info->import_section = import_section;
    info->all_sections = section_header_list;
    info->raw_import_data = raw_import_data;
    info->raw_import_file_offset = raw_import_file_offset;
    info->import_info = import_info;
    info->end_of_header_offset = header_end_offset;
    info->file_size = file_size;
    return info;
}
*/

ExeInfo* exe_get_info(const char* filename) {
    unsigned int file_size = get_file_size(filename);
    FILE* fd = fopen(filename, "rb");
    IMAGE_DOS_HEADER* dos_header = malloc(sizeof(IMAGE_DOS_HEADER));
    IMAGE_NT_HEADERS64* nt_header = malloc(sizeof(IMAGE_NT_HEADERS64));
    IMAGE_SECTION_HEADER* section_header_list;
    IMAGE_SECTION_HEADER** section_header_pointer_list;
    IMAGE_SECTION_HEADER* text_section;
    char* raw_text_code;
    unsigned int raw_text_file_offset;
    unsigned int header_end_offset;

    fread(dos_header, sizeof(IMAGE_DOS_HEADER), 1, fd);
    fseek(fd, dos_header->e_lfanew, SEEK_SET);
    fread(nt_header, sizeof(IMAGE_NT_HEADERS64), 1, fd);
    header_end_offset = ftell(fd);
    unsigned int section_list_size_bytes = nt_header->FileHeader.NumberOfSections * SECTION_TABLE_ENTRY_SIZE;
    section_header_list = malloc(section_list_size_bytes);
    section_header_pointer_list = malloc(nt_header->FileHeader.NumberOfSections * sizeof(void*));
    fread(section_header_list, section_list_size_bytes, 1, fd);
    for (unsigned int i = 0; i < nt_header->FileHeader.NumberOfSections; i++) {
        section_header_pointer_list[i] = &section_header_list[i];
    }

    // NOTE(TeYo): This code assumes that the .text section is always going to be the first section
    text_section = get_section(0, fd, 
            section_header_pointer_list, nt_header->FileHeader.NumberOfSections, 
            nt_header->OptionalHeader.FileAlignment, &raw_text_file_offset, &raw_text_code);

    ImportInfo* import_info = parse_import_data(nt_header, fd, section_header_pointer_list);

    fclose(fd);

    ExeInfo* exe_info = malloc(sizeof(ExeInfo));
    exe_info->dos_header = dos_header;
    exe_info->nt_header = nt_header;
    exe_info->text_section = text_section;
    exe_info->raw_text_file_offset = raw_text_file_offset;
    exe_info->raw_text_code = raw_text_code;
    //exe_info->import_section = import_section;
    //exe_info->raw_import_file_offset = raw_import_file_offset;
    //exe_info->raw_import_data = raw_import_data;
    exe_info->all_sections = section_header_pointer_list;
    exe_info->end_of_header_offset = header_end_offset;
    exe_info->file_size = file_size;
    exe_info->import_info = import_info;
    return exe_info;
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
