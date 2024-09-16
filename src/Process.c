#include "inttypes.h"
#include "PayloadStructure.h"

/*
This function will get inserted into the executable.
This function is what you want to modify if to your individual needs (you can also have multiple of them)
NOTE(TeYo): You probably want to know the x86 calling convention if you would want to use this
NOTE(TeYo): Make sure to not try to use any read only data as that doesn't seem to work
*/

/* STACK FORMATION
    push rcx
    push rdx
    push r8     
    push r9
    sub     esp, 16
    movdqu  oword [esp], xmm0
    sub     esp, 16
    movdqu  oword [esp], xmm1
    sub     esp, 16
    movdqu  oword [esp], xmm2
    sub     esp, 16
    movdqu  oword [esp], xmm3
*/

#define ARG_STACK_BEGIN 0
#define ARG_RCX 128
#define ARG_RDX 136
#define ARG_R8 144
#define ARG_R9 152
#define ARG_XMM0 168
#define ARG_XMM1 184
#define ARG_XMM2 200
#define ARG_XMM3 216

#ifndef SECTION_VIRTUAL_ADDRESS
#define SECTION_VIRTUAL_ADDRESS 0xDEADBEEF
#endif

typedef void FILE;
typedef int fputs_functype(const char* str, FILE* stream);
typedef int64_t strlen_functype(const char* str);
typedef void* malloc_functype(int64_t size);
typedef void free_functype(void* ptr);
typedef void exit_functype(int exit_code);

#define place_signature(signature) asm ("call rip + %c0" : : "i"(signature))

int __attribute__((noinline)) fputs(const char* str, FILE* stream) {
    register int ret asm("rax");
    place_signature(PAYLOAD_SIGNATURE(PAYLOAD_INDEX_fputs));
    return ret;
};

int64_t __attribute__((noinline)) strlen(const char* str) {
    register int64_t ret asm("rax");
    asm ("call rip + %c1" 
            : "=r"(ret) 
            : "i"(PAYLOAD_SIGNATURE(PAYLOAD_INDEX_strlen)));
    //place_signature(PAYLOAD_SIGNATURE(PAYLOAD_INDEX_strlen));
    return ret;
};

void* __attribute__((noinline)) malloc_func(int64_t size) {
    register void* ret asm("rax");
    place_signature(PAYLOAD_SIGNATURE(PAYLOAD_INDEX_malloc));
    return ret;
};

void __attribute__((noinline)) free(void* ptr) {
    place_signature(PAYLOAD_SIGNATURE(PAYLOAD_INDEX_free));
};

void __attribute__((noinline)) exit(int exit_code) {
    place_signature(PAYLOAD_SIGNATURE(PAYLOAD_INDEX_exit));
};

int process_fputs(const char* str, FILE* stream) {
    place_signature(PAYLOAD_ENTRY_POINT_SIGNATURE);
    
    char* new_str = (char*)(process_fputs + 0x100);
    new_str[0] = 'H';
    new_str[1] = 'I';
    new_str[2] = '\0';
    int len = strlen(new_str);
    if (len == 2) {
        fputs(new_str, stream);
    }

    // TODO(TeYo): figure out how to do far calls to hopefully get things like malloc and strlen to work

    exit(0);
    place_signature(PAYLOAD_RETURN_POINT_SIGNATURE);
    return 1;
}




/*
void process(void* data, void** function_address_table) {
    uint64_t rcx = *(uint64_t*)(data + ARG_RCX);

    return;
}
*/
