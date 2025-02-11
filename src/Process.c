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
