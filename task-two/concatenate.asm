; concatenate.asm
section .data
    prompt1 db "Enter your first name: ", 0
    prompt2 db "Enter your last name: ", 0
    hello db "Hello, ", 0
    newline db 10, 0

section .bss
    first_name resb 50
    last_name resb 50

section .text
    global _start

_start:
    ; Print first prompt
    mov rax, 1
    mov rdi, 1
    mov rsi, prompt1
    mov rdx, 22
    syscall

    ; Read first name
    mov rax, 0
    mov rdi, 0
    mov rsi, first_name
    mov rdx, 50
    syscall

    ; Print second prompt
    mov rax, 1
    mov rdi, 1
    mov rsi, prompt2
    mov rdx, 21
    syscall

    ; Read last name
    mov rax, 0
    mov rdi, 0
    mov rsi, last_name
    mov rdx, 50
    syscall

    ; Print "Hello, "
    mov rax, 1
    mov rdi, 1
    mov rsi, hello
    mov rdx, 7
    syscall

    ; Print last name
    mov rax, 1
    mov rdi, 1
    mov rsi, last_name
    mov rdx, 50
    syscall

    ; Print first name
    mov rax, 1
    mov rdi, 1
    mov rsi, first_name
    mov rdx, 50
    syscall

    ; Print newline
    mov rax, 1
    mov rdi, 1
    mov rsi, newline
    mov rdx, 1
    syscall

    ; Exit
    mov rax, 60
    xor rdi, rdi
    syscall
