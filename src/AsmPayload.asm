section .text
    
BITS 64

global get_teb, get_peb

get_teb:
    mov rax, gs:[0x30]

get_peb:
    mov rax, gs:[0x60]
    ret
