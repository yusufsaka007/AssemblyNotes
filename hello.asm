section .data
    msg db "Hello, world!", 0xA
    len equ $ - msg

section .text
    global _start

_start:
    ; write(stdout, msg, len)
    mov rax, 1 ; syscall: write
    mov rdi, 1 ; file descriptor: stdout
    mov rsi, msg ; pointer to msg
    mov rdx, len ; message length
    syscall

    ; exit(0)
    mov rax, 60 ; syscall: exit
    xor rdi, rdi ; status = 0
    syscall
