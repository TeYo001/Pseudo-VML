; ### PSEUDO VML Instruction Fetching ###
; This program is made to be inserted into the pseudo-vml section, and has the purpose of extracting information about a function call for further processing 


    global _start
    default rel
    BITS 64

; save all registers
    push rax
    push rbx
    push rcx
    push rdx
    push rsi
    push rdi
    push rbp
    push rsp
    push r8
    push r9
    push r10
    push r11
    push r12
    push r13
    push r14
    push r15
    sub esp, 16
    movdqu dqword [esp], xmm0
    sub esp, 16
    movdqu dqword [esp], xmm1
    sub esp, 16
    movdqu dqword [esp], xmm2
    sub esp, 16
    movdqu dqword [esp], xmm3
    sub esp, 16
    movdqu dqword [esp], xmm4
    sub esp, 16
    movdqu dqword [esp], xmm5
    sub esp, 16
    movdqu dqword [esp], xmm6
    sub esp, 16
    movdqu dqword [esp], xmm7
    sub esp, 16
    movdqu dqword [esp], xmm8
    sub esp, 16
    movdqu dqword [esp], xmm9
    sub esp, 16
    movdqu dqword [esp], xmm10
    sub esp, 16
    movdqu dqword [esp], xmm11
    sub esp, 16
    movdqu dqword [esp], xmm12
    sub esp, 16
    movdqu dqword [esp], xmm13
    sub esp, 16
    movdqu dqword [esp], xmm14
    sub esp, 16
    movdqu dqword [esp], xmm15
