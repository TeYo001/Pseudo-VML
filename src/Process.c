#include "inttypes.h"


/*
This function will get inserted into the executable.
This function is what you want to modify if to your individual needs (you can also have multiple of them)
NOTE(TeYo): You probably want to know the x86 calling convention if you would want to use this
*/

/*

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

typedef void FILE;

void process(void* data, int (*fputs)(const char* str, FILE* fd)) {
    uint64_t rcx = *(uint64_t*)(data + ARG_RCX);

    return;
}
