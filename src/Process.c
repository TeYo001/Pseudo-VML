/*
#include "ProcessLib.h"

#define WIN_LIBRARY_START 0
#define WIN_FUNCTION_START 2

#define WIN_kernel32 WIN_LIBRARY_START + 0
#define WIN_user32 WIN_LIBRARY_START + 1

#define WIN_GetModuleHandle WIN_FUNCTION_START + 0
#define WIN_GetProcAddress WIN_FUNCTION_START + 1
#define WIN_LoadLibrary WIN_FUNCTION_START + 2
#define WIN_FreeLibrary WIN_FUNCTION_START + 3
#define WIN_VirtualAlloc WIN_FUNCTION_START + 4
#define WIN_VirtualProtect WIN_FUNCTION_START + 5
#define WIN_MessageBox WIN_FUNCTION_START + 6

const char __attribute__((section(".text#"))) literal[] = 
    "kernel32.dll\0user32.dll\0" // libraries
    "GetModuleHandleA\0GetProcAddress\0LoadLibraryA\0FreeLibrary\0VirtualAllocA\0VirtualProtect\0MessageBoxA\0"; // functions

const char* to_literal(unsigned int literal_idx) {
    unsigned int idx = 0;
    for (int i = 0; i < literal_idx; i++) {
        while (literal[idx] != '\0') {
            idx++;
        }
        idx++;
    }
    return literal + idx;
}

typedef void* HMODULE;
typedef void* FARPROC;
typedef void* FILE;

typedef HMODULE (__stdcall *get_module_handle_functype)(const char* name);
typedef FARPROC (__stdcall *get_proc_address_functype)(HMODULE module, const char* name);
typedef HMODULE (__stdcall *load_library_functype)(const char* name);
typedef bool (__stdcall *free_library_functype)(HMODULE module);
typedef void* (__stdcall *virtual_alloc_functype)(void* address, int64_t size, uint32_t allocation_type, uint32_t protect); // address is optional
typedef bool (__stdcall *virtual_protect_functype)(void* address, int64_t size, uint32_t new_protect, uint32_t* old_protect);

#define MB_OK 0x00000000L
#define MB_INFO 0x00000040L 
#define MB_WARNING 0x00000030L
#define MB_ERROR 0x00000010L
typedef int(__stdcall *message_box_functype)(void* window, const char* text, const char* caption, uint32_t type);

int fputs_payload(const char* str, FILE fd) {
    PEB* peb = get_peb();
    LdrSimpleEntry simple_ldr[16];
    unsigned int simple_ldr_length = build_simple_ldr(peb, simple_ldr);
    void* self = simple_ldr[0].base;
    void* kernel = NULL;
    const char* kernel32_literal = to_literal(WIN_kernel32);
    for (int i = 0; i < simple_ldr_length; i++) {
        if (!str_ends_with(simple_ldr[i].name, kernel32_literal, str_len(simple_ldr[i].name), str_len(kernel32_literal))) {
             continue;
        }
        kernel = simple_ldr[i].base;
    }
    KernelParseResult kernel_parse_result = {0};
    parse_kernel(kernel, &kernel_parse_result,
            to_literal(WIN_GetModuleHandle),
            to_literal(WIN_GetProcAddress),
            to_literal(WIN_LoadLibrary),
            to_literal(WIN_FreeLibrary),
            to_literal(WIN_VirtualAlloc),
            to_literal(WIN_VirtualProtect));
    get_module_handle_functype get_module_handle = kernel_parse_result.get_module_handle_ptr;
    get_proc_address_functype get_proc_address = kernel_parse_result.get_proc_address_ptr;
    load_library_functype load_library = kernel_parse_result.load_library_ptr;
    free_library_functype free_library = kernel_parse_result.free_library_ptr;
    virtual_alloc_functype virtual_alloc = kernel_parse_result.virtual_alloc_ptr;
    virtual_protect_functype virtual_protect = kernel_parse_result.virtual_protect_ptr;

    HMODULE user32_module = load_library(to_literal(WIN_user32));
    if (user32_module == NULL) {
        return 1;
    }
    message_box_functype message_box = get_proc_address(user32_module, to_literal(WIN_MessageBox));
    if (message_box == NULL) {
        return 1;
    }
    const char empty = '\0';
    message_box(NULL, kernel32_literal, &empty, MB_INFO);


    return 0;
}
*/

#include "stdio.h"
#include "inttypes.h"
#include "stdbool.h"
#include "stddef.h"

typedef uint16_t WORD;
typedef uint32_t DWORD;
typedef int32_t LONG;
typedef uint8_t BYTE;
typedef uint64_t ULONGLONG;
typedef char CHAR;

#define IMAGE_NUMBEROF_DIRECTORY_ENTRIES    16
#define IMAGE_SIZEOF_SHORT_NAME              8

#define EXPORT_TABLE_DIRECTORY_ENTRY 0
#define IMPORT_TABLE_DIRECTORY_ENTRY 1
#define RESOURCE_TABLE_DIRECTORY_ENTRY 2
#define EXCEPTION_TABLE_DIRECTORY_ENTRY 3
#define ATTRIBUTE_CERTIFICATE_TABLE_ENTRY 4
#define BASE_RELOCATION_TABLE_ENTRY 5
#define DEBUG_DATA_TABLE_ENTRY 6
#define ARCHITECTURE_TABLE_ENTRY 7
#define GLOBAL_POINTER_TABLE_ENTRY 8
#define THREAD_LOCAL_STORAGE_TABLE_ENTRY 9
#define LOAD_CONFIGURATION_TABLE_ENTRY 10
#define BOUND_IMPORT_TABLE_ENTRY 11
#define IMPORT_ADDRESS_TABLE_ENTRY 12
#define DELAY_IMPORT_DESCRIPTOR_ENTRY 13
#define COM_RUNTIME_HEADER_ENTRY 14
#define RESERVED_ENTRY 15

#define IMAGE_DOS_SIGNATURE                 0x5A4D      // MZ
#define IMAGE_NT_SIGNATURE                  0x00004550  // PE00

typedef struct _IMAGE_DOS_HEADER {      // DOS .EXE header
    WORD   e_magic;                     // Magic number
    WORD   e_cblp;                      // Bytes on last page of file
    WORD   e_cp;                        // Pages in file
    WORD   e_crlc;                      // Relocations
    WORD   e_cparhdr;                   // Size of header in paragraphs
    WORD   e_minalloc;                  // Minimum extra paragraphs needed
    WORD   e_maxalloc;                  // Maximum extra paragraphs needed
    WORD   e_ss;                        // Initial (relative) SS value
    WORD   e_sp;                        // Initial SP value
    WORD   e_csum;                      // Checksum
    WORD   e_ip;                        // Initial IP value
    WORD   e_cs;                        // Initial (relative) CS value
    WORD   e_lfarlc;                    // File address of relocation table
    WORD   e_ovno;                      // Overlay number
    WORD   e_res[4];                    // Reserved words
    WORD   e_oemid;                     // OEM identifier (for e_oeminfo)
    WORD   e_oeminfo;                   // OEM information; e_oemid specific
    WORD   e_res2[10];                  // Reserved words
    LONG   e_lfanew;                    // File address of new exe header
} IMAGE_DOS_HEADER, *PIMAGE_DOS_HEADER;

typedef struct _IMAGE_SECTION_HEADER {
    BYTE    Name[IMAGE_SIZEOF_SHORT_NAME];
    union {
            DWORD   PhysicalAddress;
            DWORD   VirtualSize;
    } Misc;
    DWORD   VirtualAddress;
    DWORD   SizeOfRawData;
    DWORD   PointerToRawData; // NOTE(TeYo): Must be divisible by 64 (will therefore usually be a little smaller then the actual PointerToRawData) (very annoying)
    DWORD   PointerToRelocations;
    DWORD   PointerToLinenumbers;
    WORD    NumberOfRelocations;
    WORD    NumberOfLinenumbers;
    DWORD   Characteristics;
} IMAGE_SECTION_HEADER, *PIMAGE_SECTION_HEADER;

typedef struct _IMAGE_DATA_DIRECTORY {
    DWORD   VirtualAddress;
    DWORD   Size;
} IMAGE_DATA_DIRECTORY, *PIMAGE_DATA_DIRECTORY;

typedef struct _IMAGE_OPTIONAL_HEADER {
    //
    // Standard fields.
    //

    WORD    Magic;
    BYTE    MajorLinkerVersion;
    BYTE    MinorLinkerVersion;
    DWORD   SizeOfCode;
    DWORD   SizeOfInitializedData;
    DWORD   SizeOfUninitializedData;
    DWORD   AddressOfEntryPoint;
    DWORD   BaseOfCode;
    DWORD   BaseOfData;

    //
    // NT additional fields.
    //

    DWORD   ImageBase;
    DWORD   SectionAlignment;
    DWORD   FileAlignment;
    WORD    MajorOperatingSystemVersion;
    WORD    MinorOperatingSystemVersion;
    WORD    MajorImageVersion;
    WORD    MinorImageVersion;
    WORD    MajorSubsystemVersion;
    WORD    MinorSubsystemVersion;
    DWORD   Win32VersionValue;
    DWORD   SizeOfImage;
    DWORD   SizeOfHeaders;
    DWORD   CheckSum;
    WORD    Subsystem;
    WORD    DllCharacteristics;
    DWORD   SizeOfStackReserve;
    DWORD   SizeOfStackCommit;
    DWORD   SizeOfHeapReserve;
    DWORD   SizeOfHeapCommit;
    DWORD   LoaderFlags;
    DWORD   NumberOfRvaAndSizes;
    IMAGE_DATA_DIRECTORY DataDirectory[IMAGE_NUMBEROF_DIRECTORY_ENTRIES];
} IMAGE_OPTIONAL_HEADER32, *PIMAGE_OPTIONAL_HEADER32;

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

typedef struct _IMAGE_FILE_HEADER {
    WORD    Machine;
    WORD    NumberOfSections;
    DWORD   TimeDateStamp;
    DWORD   PointerToSymbolTable;
    DWORD   NumberOfSymbols;
    WORD    SizeOfOptionalHeader;
    WORD    Characteristics;
} IMAGE_FILE_HEADER, *PIMAGE_FILE_HEADER;

typedef struct _IMAGE_NT_HEADERS64 {
    DWORD Signature;
    IMAGE_FILE_HEADER FileHeader;
    IMAGE_OPTIONAL_HEADER64 OptionalHeader;
} IMAGE_NT_HEADERS64, *PIMAGE_NT_HEADERS64;


typedef struct _IMAGE_NT_HEADERS {
    DWORD Signature;
    IMAGE_FILE_HEADER FileHeader;
    IMAGE_OPTIONAL_HEADER32 OptionalHeader;
} IMAGE_NT_HEADERS32, *PIMAGE_NT_HEADERS32;

typedef struct _IMAGE_IMPORT_DESCRIPTOR {
    union {
        DWORD   Characteristics;
        DWORD   OriginalFirstThunk;
    } DUMMYUNIONNAME;
    DWORD   TimeDateStamp;
    DWORD   ForwarderChain;
    DWORD   Name;
    DWORD   FirstThunk;
} IMAGE_IMPORT_DESCRIPTOR;

typedef struct _IMAGE_THUNK_DATA64 {
    union {
        ULONGLONG ForwarderString;  // PBYTE 
        ULONGLONG Function;         // PDWORD
        ULONGLONG Ordinal;
        ULONGLONG AddressOfData;    // PIMAGE_IMPORT_BY_NAME
    } u1;
} IMAGE_THUNK_DATA64;
typedef IMAGE_THUNK_DATA64 * PIMAGE_THUNK_DATA64;

typedef struct _IMAGE_THUNK_DATA32 {                               
    union {
        DWORD ForwarderString;      // PBYTE 
        DWORD Function;             // PDWORD
        DWORD Ordinal;
        DWORD AddressOfData;        // PIMAGE_IMPORT_BY_NAME
    } u1;
} IMAGE_THUNK_DATA32;
typedef IMAGE_THUNK_DATA32 * PIMAGE_THUNK_DATA32;

typedef struct _IMAGE_IMPORT_BY_NAME {
    WORD    Hint;
    CHAR   Name[1];
} IMAGE_IMPORT_BY_NAME, *PIMAGE_IMPORT_BY_NAME;

typedef struct _IMAGE_EXPORT_DIRECTORY {
    DWORD   Characteristics;
    DWORD   TimeDateStamp;
    WORD    MajorVersion;
    WORD    MinorVersion;
    DWORD   Name;
    DWORD   Base;
    DWORD   NumberOfFunctions;
    DWORD   NumberOfNames;
    DWORD   AddressOfFunctions;     // RVA from base of image
    DWORD   AddressOfNames;         // RVA from base of image
    DWORD   AddressOfNameOrdinals;  // RVA from base of image
} IMAGE_EXPORT_DIRECTORY, *PIMAGE_EXPORT_DIRECTORY;

extern void* get_kernel32_base_address();
extern void* get_self_base_address();

typedef struct {
    bool valid;

    // base addresses
    void* self;
    void* pvml;
    void* kernel32;
    void* user32;

    // functions
    void* get_proc_address;
    void* load_library;
    void* exit_process;
    void* virtual_alloc;
    void* virtual_free;
    void* message_box;
} PayloadInfo;

bool str_cmp(const char* str1, const char* str2) {
    unsigned int i = 0;
    while (str1[i] == str2[i]) {
        if (str1[i] == '\0') {
            return true;
        }
        i++;
    }
    return false;
}

#ifndef PVML_INDEX
#define PVML_INDEX 0
#endif
#ifndef PAYLOAD_INFO_OFFSET
#define PAYLOAD_INFO_OFFSET 0
#endif

#define GetProcAddress_idx 0
#define LoadLibraryA_idx GetProcAddress_idx + 15
#define ExitProcess_idx LoadLibraryA_idx + 13
#define VirtualAlloc_idx ExitProcess_idx + 12
#define VirtualFree_idx VirtualAlloc_idx + 13
#define MessageBoxA_idx VirtualFree_idx + 12
#define user32_idx MessageBoxA_idx + 12
static const char* __attribute__((section(".text#"))) big_str = "GetProcAddress\0LoadLibraryA\0ExitProcess\0VirtualAlloc\0VirtualFree\0MessageBoxA\0user32.dll";

typedef void* (*GetProcAddress_functype)(void* module, const char* name);
typedef void* (*LoadLibraryA_functype)(const char* name);
typedef int (*MessageBoxA_functype)(void* window, const char* text, const char* caption, unsigned int type);

static PayloadInfo build_payload_info() {
    PayloadInfo info = {0};
    
    // check if process inputs are actually there
    if (PVML_INDEX < 0) {
        info.valid = false;
        return info;
    }
    if (PAYLOAD_INFO_OFFSET < 0) {
        info.valid = false;
        return info;
    }

    // parse kernel32
    {
        info.kernel32 = get_kernel32_base_address();
        IMAGE_DOS_HEADER* dos_header = info.kernel32;
        if (dos_header->e_magic != IMAGE_DOS_SIGNATURE) {
            info.valid = false;
            return info;
        }
        IMAGE_NT_HEADERS64* nt_header = info.kernel32 + dos_header->e_lfanew;
        if (nt_header->Signature != IMAGE_NT_SIGNATURE) {
            info.valid = false;
            return info;
        }
        IMAGE_EXPORT_DIRECTORY* iat = info.kernel32 + nt_header->OptionalHeader.DataDirectory[EXPORT_TABLE_DIRECTORY_ENTRY].VirtualAddress;
        uint32_t* func_address_table = (uint32_t*)((void*)info.kernel32 + iat->AddressOfFunctions);
        uint32_t* name_table = (uint32_t*)((void*)info.kernel32 + iat->AddressOfNames);
        uint16_t* name_ordinal_table = (uint16_t*)((void*)info.kernel32 + iat->AddressOfNameOrdinals);
        unsigned int name_count = iat->NumberOfNames;
        for (unsigned int i = 0; i < name_count; i++) {
            uint16_t ordinal = name_ordinal_table[i];
            void* func = info.kernel32 + func_address_table[ordinal];
            const char* name = info.kernel32 + name_table[i];
            if (str_cmp(name, &big_str[GetProcAddress_idx])) {
                info.get_proc_address = func;
            }
            else if (str_cmp(name, &big_str[LoadLibraryA_idx])) {
                info.load_library = func;
            }
            else if (str_cmp(name, &big_str[ExitProcess_idx])) {
                info.exit_process = func;
            }
            else if (str_cmp(name, &big_str[VirtualAlloc_idx])) {
                info.virtual_alloc = func;
            }
            else if (str_cmp(name, &big_str[VirtualFree_idx])) {
                info.virtual_free = func;
            }
        }

        LoadLibraryA_functype load_library = info.load_library;
        GetProcAddress_functype get_proc_address = info.get_proc_address;
        info.user32 = load_library(&big_str[user32_idx]);
        info.message_box = get_proc_address(info.user32, &big_str[MessageBoxA_idx]);
    }

    // parse self
    {
        info.self = get_self_base_address();
        IMAGE_DOS_HEADER* dos_header = info.self;
        if (dos_header->e_magic != IMAGE_DOS_SIGNATURE) {
            info.valid = false;
            return info;
        }
        IMAGE_NT_HEADERS64* nt_header = info.self + dos_header->e_lfanew;
        if (nt_header->Signature != IMAGE_NT_SIGNATURE) {
            info.valid = false;
            return info;
        }
        IMAGE_SECTION_HEADER* pvml_section = (void*)nt_header + sizeof(IMAGE_NT_HEADERS64) + PVML_INDEX * sizeof(IMAGE_SECTION_HEADER);
        info.pvml = info.self + pvml_section->VirtualAddress;
    }

    info.valid = true;
    return info;
}

static PayloadInfo* load_payload_info_from_storage() {
    // parse self
    void* pvml = NULL;
    {    
        void* self = get_self_base_address();
        IMAGE_DOS_HEADER* dos_header = self;
        if (dos_header->e_magic != IMAGE_DOS_SIGNATURE) {
            return NULL;
        }
        IMAGE_NT_HEADERS64* nt_header = self + dos_header->e_lfanew;
        if (nt_header->Signature != IMAGE_NT_SIGNATURE) {
            return NULL;
        }
        IMAGE_SECTION_HEADER* pvml_section = (void*)nt_header + sizeof(IMAGE_NT_HEADERS64) + PVML_INDEX * sizeof(IMAGE_SECTION_HEADER);
        pvml = self + pvml_section->VirtualAddress;
    }
    return pvml + PAYLOAD_INFO_OFFSET;
}

// payloads

void setup_payload() {
    PayloadInfo info = build_payload_info();
    PayloadInfo* storage_destination = (info.pvml + PAYLOAD_INFO_OFFSET);
    *storage_destination = info;
}


int fputs_payload(const char* str, void* file) {
    PayloadInfo* info = load_payload_info_from_storage();
    MessageBoxA_functype message_box = info->message_box;
    message_box(NULL, str, NULL, 0);
    return 0;
}
