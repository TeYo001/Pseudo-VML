; ------------------------ ;
; This code is used to give basic functionality to the Process.c by implementing some basic syscalls in assembly
; ------------------------ ;
    global get_proc_address, load_library, free_library, get_module_handle
    BITS 64

get_proc_address:
    mov rax, GET_PROC_ADDRESS
    call rax
ret

load_library:
    mov rax, LOAD_LIBRARY
    call rax
ret

free_library:
    mov rax, FREE_LIBRARY
    call rax
ret

get_module_handle:
    mov rax, GET_MODULE_HANDLE
    call rax
ret

