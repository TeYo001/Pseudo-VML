#pragma once
#include "inttypes.h"
#include "stdbool.h"
#include "stddef.h"

// This is just to get my LSP to stop complaining
#ifdef __linux__
#define __stdcall __cdecl
#endif

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

typedef struct {
  uint16_t  Length;
  uint16_t  MaximumLength;
  wchar_t*  Buffer;
} UNICODE_STRING;

typedef struct _LIST_ENTRY {
   struct _LIST_ENTRY *Flink;
   struct _LIST_ENTRY *Blink;
} LIST_ENTRY;

typedef struct {
    void* Reserved1[2];
    LIST_ENTRY InMemoryOrderLinks;
    void* Reserved2[2];
    void* DllBase;
    void* EntryPoint;
    void* Reserved3;
    UNICODE_STRING FullDllName;
    uint8_t Reserved4[8];
    void* Reserved5[3];
    union {
        uint32_t CheckSum;
        void* Reserved6;
    };
    uint32_t TimeDateStamp;
} LDR_DATA_TABLE_ENTRY;

typedef struct {
  uint8_t       Reserved1[8];
  void*      Reserved2[3];
  LIST_ENTRY InMemoryOrderModuleList;
} PEB_LDR_DATA;

typedef struct {
  uint8_t           Reserved1[16];
  void*          Reserved2[10];
  UNICODE_STRING ImagePathName;
  UNICODE_STRING CommandLine;
} RTL_USER_PROCESS_PARAMETERS, *PRTL_USER_PROCESS_PARAMETERS;

typedef void (__stdcall *PPS_POST_PROCESS_INIT_ROUTINE)(void); // this function is undocumented and so is just assumed to be null

typedef struct {
  uint8_t                           Reserved1[2];
  uint8_t                           BeingDebugged;
  uint8_t                           Reserved2[1];
  void*                             Reserved3[2];
  PEB_LDR_DATA*                     Ldr;
  RTL_USER_PROCESS_PARAMETERS*  ProcessParameters;
  void*                         Reserved4[3];
  void*                         AtlThunkSListPtr;
  void*                         Reserved5;
  uint32_t                         Reserved6;
  void*                         Reserved7;
  uint32_t                         Reserved8;
  uint32_t                         AtlThunkSListPtr32;
  void*                         Reserved9[45];
  uint8_t                          Reserved10[96];
  PPS_POST_PROCESS_INIT_ROUTINE PostProcessInitRoutine;
  uint8_t                          Reserved11[128];
  void*                         Reserved12[1];
  uint32_t                         SessionId;
} PEB;

typedef struct {
  void* Reserved1[12];
  PEB*  ProcessEnvironmentBlock;
  void* Reserved2[399];
  uint8_t  Reserved3[1952];
  void* TlsSlots[64];
  uint8_t  Reserved4[8];
  void* Reserved5[26];
  void* ReservedForOle;
  void* Reserved6[4];
  void* TlsExpansionSlots;
} TEB;

typedef uint16_t WORD;
typedef uint32_t DWORD;
typedef int32_t LONG;
typedef uint8_t BYTE;
typedef uint64_t ULONGLONG;
typedef char CHAR;

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


// asm functions
extern TEB* get_teb(void);
extern PEB* get_peb(void);

// process structs

typedef struct {
    char name[256];
    void* base;
} LdrSimpleEntry;

typedef struct {
    void* get_module_handle_ptr;
    void* get_proc_address_ptr;
    void* load_library_ptr;
    void* free_library_ptr;
    void* virtual_alloc_ptr;
    void* virtual_protect_ptr;
} KernelParseResult;

unsigned int str_len(const char* str);
unsigned int unicode_str_len(const wchar_t* str);
bool str_is_equal(const char* str1, const char* str2, unsigned int length);
bool str_ends_with(const char* str, const char* ending_str, unsigned int str_length, unsigned int ending_str_length);
void mem_copy(void* destination, const void* source, unsigned int length);
void str_copy(char* destination, const char* source);
void unicode_to_asci_str(char* destination, const wchar_t* source);
unsigned int build_simple_ldr(PEB* peb, LdrSimpleEntry* out_ldr_simple);
void parse_kernel(void* kernel, KernelParseResult* out_result,
        const char* get_module_handle_literal,
        const char* get_proc_address_literal,
        const char* load_library_literal,
        const char* free_library_literal,
        const char* virtual_alloc_literal,
        const char* virtual_protect_literal);
