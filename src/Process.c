#include "inttypes.h"
#include "PayloadStructure.h"

/*
This function will get inserted into the executable.
This function is what you want to modify if to your individual needs (you can also have multiple of them)
NOTE(TeYo): You probably want to know the x86 calling convention if you would want to use this
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
typedef int fputs_functype(const char*, FILE*);

int process_fputs(const char* str, FILE* stream) {
    //fputs_functype* fputs = *(void**)(SECTION_VIRTUAL_ADDRESS + FUNCTION_ADDRESS_TABLE_PTR);
    
    // TODO(TeYo): Figure out how to do relative calls from c (probably through some inline assembly)

    return 0;
}


/*
void process(void* data, void** function_address_table) {
    uint64_t rcx = *(uint64_t*)(data + ARG_RCX);

    return;
}
*/
