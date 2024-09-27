    default rel
    BITS 64

; volatile RAX, R10, R11, XMM4, and XMM5 

extern exit 

section .text
global _start 
_start:
; call FAR [far_func]
jmp far_func

section .cool
far_func:
    xor rcx, rcx
    mov rdi, 0x0
    call exit
    int3
    
