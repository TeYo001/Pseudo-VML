; ### PSEUDO VML Instruction Fetching ###
; This program is made to be inserted into the pseudo-vml section, and has the purpose of extracting information about a function call for further processing 


    global _start
    default rel
    BITS 64

; volatile RAX, R10, R11, XMM4, and XMM5 
; non volatile 

; ARGUMENT_TABLE_PTR gets defined by a compilation flag
; PRE_PROCESSOR_BEGIN_PTR gets defined by a compilation flag

%define ARGUMENT_TABLE_OFFSET ARGUMENT_TABLE_PTR - PRE_PROCESSOR_BEGIN_PTR - 8
    section .pvml
_start:
REX.W jmp far [_start + 0x7] ; hopefully fixes the CS register

; save non-volitile registers that will be used
    push rdi
    lea rdi, ($ + ARGUMENT_TABLE_OFFSET)

; put data into argument information table
    mov [rdi], rcx,
    add rdi, 8
    mov [rdi], rdx, 
    add rdi, 8
    mov [rdi], r8
    add rdi, 8
    mov [rdi], r9
    add rdi, 8
    movdqu oword [rdi], xmm0
    add rdi, 16
    movdqu oword [rdi], xmm1
    add rdi, 16
    movdqu oword [rdi], xmm2
    add rdi, 16
    movdqu oword [rdi], xmm3

; process the information by jumping into c code (this will be replaces by a jump command by the post compilation step)
    xor eax, eax

; padding
    nop
    nop
    nop
    nop
    nop

; restore the non-volitile registers
    pop rdi

; return to normal execution (this will be replaces by a far jump command by the post compilation step) 
    ret
