    global _start
    default rel
    BITS 64

; restore all registers
    movdqu xmm15, dqword [esp]
    add esp, 16
    movdqu xmm14, dqword [esp]
    add esp, 16
    movdqu xmm13, dqword [esp]
    add esp, 16
    movdqu xmm12, dqword [esp]
    add esp, 16
    movdqu xmm11, dqword [esp]
    add esp, 16
    movdqu xmm10, dqword [esp]
    add esp, 16
    movdqu xmm9, dqword [esp]
    add esp, 16
    movdqu xmm8, dqword [esp]
    add esp, 16
    movdqu xmm7, dqword [esp]
    add esp, 16
    movdqu xmm6, dqword [esp]
    add esp, 16
    movdqu xmm5, dqword [esp]
    add esp, 16
    movdqu xmm4, dqword [esp]
    add esp, 16
    movdqu xmm3, dqword [esp]
    add esp, 16
    movdqu xmm2, dqword [esp]
    add esp, 16
    movdqu xmm1, dqword [esp]
    add esp, 16
    movdqu xmm0, dqword [esp]
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
    pop rax
