section .text
    
BITS 64

global get_kernel32_base_address, get_self_base_address

get_kernel32_base_address:
    xor rcx, rcx ; RCX = 0
    mov rax, [gs:rcx + 0x60] ; RAX = PEB
    mov rax, [rax + 0x18] ; RAX = PEB.Ldr
    mov rax, [rax + 0x10]
    mov rax, [rax]
    mov rax, [rax]
    mov rax, [rax + 0x30] ; RAX = kernel32 base address
    ret

get_self_base_address:   
    xor rcx, rcx ; RCX = 0
    mov rax, [gs:rcx + 0x60] ; RAX = PEB
    mov rax, [rax + 0x18] ; RAX = PEB.Ldr
    mov rax, [rax + 0x10]
    mov rax, [rax + 0x30] ; RAX = self base address
    ret

