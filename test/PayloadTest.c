#include "inttypes.h"
#include "stdbool.h"
#include "stddef.h"

typedef void* HMODULE;
typedef void* FARFUNC;
typedef void* HANDLE;

typedef FARFUNC (*GetProcAddress_functype)(HMODULE hModule, const char* lpProcName);
typedef HMODULE (*GetModuleHandleA_functype)(const char* lpModuleName);
typedef HMODULE (*LoadLibraryA_functype)(const char* lpLibFileName);

typedef void (*ExitProcess_functype)(unsigned int uExitCode);

#define STD_INPUT_HANDLE ((uint32_t)(-10))
#define STD_OUTPUT_HANDLE ((uint32_t)(-11))
#define STD_ERROR_HANDLE ((uint32_t)(-12))
typedef HANDLE (*GetStdHandle_functype)(uint32_t nStdHandle);
typedef bool (*WriteConsoleA_functype)(HANDLE hConsoleOutput, 
        const void* lpBuffer,
        uint32_t nNumberOfCharsToWrite,
        uint32_t* lpNumberOfCharsWritten,
        void* lpReserved);

int main() {
    GetModuleHandleA_functype GetModuleHandle = (void*)0x7b60d1c0;
    LoadLibraryA_functype LoadLibrary = (void*)0x7b60e0a8;
    GetProcAddress_functype GetProcAddress = (void*)0x7b61c110;

    HMODULE kernel = LoadLibrary("kernel32.dll");
    HMODULE ntdll = LoadLibrary("ntdll.dll");
    ExitProcess_functype ExitProcess = GetProcAddress(kernel, "ExitProcess");
    GetStdHandle_functype GetStdHandle = GetProcAddress(kernel, "GetStdHandle");
    WriteConsoleA_functype WriteConsole = GetProcAddress(kernel, "WriteConsoleA");

    HANDLE stdout = GetStdHandle(STD_OUTPUT_HANDLE);
    
    uint32_t written;
    WriteConsole(stdout, "Hello from payload!\n", 20, &written, NULL);

    ExitProcess(0);
}
