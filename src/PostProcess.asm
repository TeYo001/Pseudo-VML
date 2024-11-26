    global _start
    default rel
    BITS 64

; restore all registers
    movdqu xmm15, oword [esp]
    add esp, 16
    movdqu xmm14, oword [esp]
    add esp, 16
    movdqu xmm13, oword [esp]
    add esp, 16
    movdqu xmm12, oword [esp]
    add esp, 16
    movdqu xmm11, oword [esp]
    add esp, 16
    movdqu xmm10, oword [esp]
    add esp, 16
    movdqu xmm9, oword [esp]
    add esp, 16
    movdqu xmm8, oword [esp]
    add esp, 16
    movdqu xmm7, oword [esp]
    add esp, 16
    movdqu xmm6, oword [esp]
    add esp, 16
    movdqu xmm5, oword [esp]
    add esp, 16
    movdqu xmm4, oword [esp]
    add esp, 16
    movdqu xmm3, oword [esp]
    add esp, 16
    movdqu xmm2, oword [esp]
    add esp, 16
    movdqu xmm1, oword [esp]
    add esp, 16
    movdqu xmm0, oword [esp]
    add esp, 16
    pop r15
    pop r14
    pop r13
    pop r12
    pop r11
    pop r10
    pop r9
    pop r8
    pop rsp
    pop rbp
    pop rdi
    pop rsi
    pop rdx
    pop rcx
    pop rbx
; pop rax (used for function return and so this is gonna be manipulated by the payload)
