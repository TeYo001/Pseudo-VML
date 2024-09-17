    default rel
    BITS 64

extern _printf

; volatile RAX, R10, R11, XMM4, and XMM5 

section .text
global main 
main:
; call FAR [far_func]
push msg
call _printf

section .data
msg: db "Hello\n", 0

section .cool
far_func:
    xor rcx, rcx
    
