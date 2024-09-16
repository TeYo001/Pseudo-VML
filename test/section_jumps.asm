BITS 64

section .text
    call FAR [far_func]

section .cool
far_func:
    xor eax, eax
