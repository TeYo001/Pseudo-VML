section .text
    
BITS 64

global get_teb, get_peb, get_kernel32_base_address

get_teb:
    mov rax, gs:[0x30]
    ret

get_peb:
    mov rax, gs:[0x60]
    ret

get_kernel32_base_address:
    xor rcx, rcx ; rcx = 0
    mov rax, [gs:rcx + 0x60] ; RAX = PEB
    mov rax, [rax + 0x18] ; RAX = PEB.Ldr
    mov rax, [rax + 0x10]
    mov rax, [rax]
    mov rax, [rax]
    mov rax, [rax + 0x30] ; RAX = kernel32 base address
    ret
