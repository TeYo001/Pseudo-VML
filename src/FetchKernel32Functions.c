#include "stdio.h"
#include "inttypes.h"
#include "windows.h"


int main() {
    HMODULE kernel = GetModuleHandle("kernel32.dll");
    printf("kernel32.dll ptr: 0x%" PRIx64 "\n", (uint64_t)kernel);
    printf("GetModuleHandleA ptr: 0x%" PRIx64 "\n", (uint64_t)GetProcAddress(kernel, "GetModuleHandleA"));
    printf("GetProcAddress ptr: 0x%" PRIx64 "\n", (uint64_t)GetProcAddress(kernel, "GetProcAddress"));
    
    return 0;
}
