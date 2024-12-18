#include "inttypes.h"
#include "stdbool.h"
#include "stddef.h"
#include "PayloadStructure.h"

/*
This function will get inserted into the executable.
This function is what you want to modify if to your individual needs (you can also have multiple of them)
NOTE(TeYo): You probably want to know the x86 calling convention if you would want to use this
*/

// These will be defined by compilation arguments
#ifndef GET_MODULE_HANDLE_PTR
#define GET_MODULE_HANDLE_PTR 0x123
#endif
#ifndef LOAD_LIBRARY_PTR
#define LOAD_LIBRARY_PTR 0x123
#endif
#ifndef FREE_LIBRARY_PTR
#define FREE_LIBRARY_PTR 0x123
#endif
#ifndef GET_PROC_ADDRESS_PTR
#define GET_PROC_ADDRESS_PTR 0x123
#endif

#define place_signature(signature) asm volatile ("call rip + %c0" : : "i"(signature))

typedef void FILE;
typedef void* HMODULE;
typedef void* HANDLE;
typedef void* FARFUNC;

// Base functions
const static HMODULE (*GetModuleHandle)(const char* module_name) = (void*)GET_MODULE_HANDLE_PTR;
const static HMODULE (*LoadLibrary)(const char* module_name) = (void*)LOAD_LIBRARY_PTR;
const static FARFUNC (*GetProcAddress)(HMODULE module, const char* proc_name) = (void*)GET_PROC_ADDRESS_PTR;

// imported functions
typedef void (*ExitProcess_functype)(unsigned int uExitCode);

#define STD_INPUT_HANDLE_CODE ((uint32_t)(-10))
#define STD_OUTPUT_HANDLE_CODE ((uint32_t)(-11))
#define STD_ERROR_HANDLE_CODE ((uint32_t)(-12))
typedef HANDLE (*GetStdHandle_functype)(uint32_t std_handle_code);
typedef bool (*WriteConsoleA_functype)(HANDLE console_output,
        const char* message, uint32_t message_length, uint32_t* out_chars_written, void* reserved);

static const char data[100] __attribute__((section(".text"))) = "kernel32.dll\0ExitProcess\0";

int process() {
    return 0;
}

