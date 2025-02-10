#include "inttypes.h"
#include "stdbool.h"
#include "stddef.h"

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

// asm functions
extern TEB* get_teb(void);
extern PEB* get_peb(void);

// process structs

typedef struct {
    char* name;
    void* base;
} LdrSimpleEntry;

unsigned int str_len(const char* str) {
    unsigned int length = 0;
    while (str[length] != '\0') {
        length++;
    }
    return length;
}

unsigned int unicode_str_len(const wchar_t* str) {
    unsigned int length = 0;
    while (str[length] != '\0') {
        length++;
    }
    return length;
}

bool str_is_equal(const char* str1, const char* str2, unsigned int length) {
    for (int i = 0; i < length; i++) {
        if (str1[i] != str2[2]) {
            return false;
        }
    }
    return true;
}

void mem_copy(void* destination, const void* source, unsigned int length) {
    for (int i = 0; i < length; i++) {
        ((char*)destination)[i] = ((const char*)source)[i];
    }
}

void str_copy(char* destination, const char* source) {
    unsigned int length = str_len(source);
    mem_copy(destination, source, length + 1);
}

void unicode_to_asci_str(char* destination, const wchar_t* source) {
    unsigned int unicode_length = unicode_str_len(source);
    for (int  i = 0; i < unicode_length + 1; i++) {
        destination[i] = (char)source[i];
    }
}

void build_simple_ldr(PEB* peb, LdrSimpleEntry* out_ldr_simple) {
    LIST_ENTRY* head = &peb->Ldr->InMemoryOrderModuleList;
    LIST_ENTRY* current = head;
    unsigned int idx = 0;
    while ((current = current->Flink) != head) {
        LDR_DATA_TABLE_ENTRY* data = (LDR_DATA_TABLE_ENTRY*)current;
        out_ldr_simple[idx].base = data->DllBase;
        unicode_str_len()
        str_copy(data->FullDllName.Buffer, out_ldr_simple[idx].name);
    }
}


// only for testing
#include "stdio.h"

static const char __attribute__((section(".text"))) big_string[] = "Hello World\n";

int main() {
    

    return 0;
}
