; ### PSEUDO VML Instruction Fetching ###
; This program is made to be inserted into the pseudo-vml section, and has the purpose of extracting information about a function call for further processing 


    global _start
    default rel
    BITS 64

; volatile RAX, R10, R11, XMM4, and XMM5 

MAX_ARG_STACK_SIZE_32BITS equ 32 ; 128 bytes

    section .pvml
_start:

.loop: ; save 128 bytes worth of the stack
    mov rsi, MAX_ARG_STACK_SIZE_32BITS
    mov rax, [rsp+8*rsi]
    push rax
    dec rbx
    jnz .loop

; save all potential argument registers 
    push rcx
    push rdx
    push r8     
    push r9
    sub     esp, 16
    movdqu  oword [esp], xmm0
    sub     esp, 16
    movdqu  oword [esp], xmm1
    sub     esp, 16
    movdqu  oword [esp], xmm2
    sub     esp, 16
    movdqu  oword [esp], xmm3

.process:
    ; put the address of the argument data block into rax
    mov rax, rsp
    sub rax, 224
    call replace_ref


.restore:
    add rsp, 224 ; restore the stack


; this function will never actually be called but will instead be replaced through code with a call to a
; c function that will process the argument data
replace_ref:
    ret

    
