#pragma once

#define PVML_INDEX 18

#define PAYLOAD_INFO_OFFSET 0x0
#define PAYLOAD_MAX_INFO_SIZE_BYTES 0x100
#define PAYLOAD_BIG_STRING_OFFSET 0x100
#define PAYLOAD_BIG_STRING_MAX_SIZE_BYTES 0x200
#define PAYLOAD_CODE_OFFSET 0x400

#define GetProcAddress_idx 0
#define LoadLibraryA_idx GetProcAddress_idx + 15
#define ExitProcess_idx LoadLibraryA_idx + 13
#define VirtualAlloc_idx ExitProcess_idx + 12
#define VirtualFree_idx VirtualAlloc_idx + 13
#define MessageBoxA_idx VirtualFree_idx + 12
#define user32_idx MessageBoxA_idx + 12
#define PAYLOAD_BIG_STRING "GetProcAddress\0LoadLibraryA\0ExitProcess\0VirtualAlloc\0VirtualFree\0MessageBoxA\0user32.dll";

