section .data

section .text
global _start
_start:
    ; jumps 1
    mov rax, 55
    cmp rax, 42
    jl yes
    mov rbx, 0
    jmp ex
yes:
    mov rbx, 1
ex:
    ; jumps 2
    mov rax, -10
    mov rdx, 2
    cmp rax, rdx
    jg location_jg ; rbx = 1
    ja location_ja ; rbx = 2
    cmp rax, rdx
    je location_je ; rbx = 3
    jne location_jne ; rbx = 4
    mov rbx, 0
    jmp location_else; rbx = 0
location_jg:
    mov rbx, 1
    jmp location_else
location_ja:
    mov rbx, 2
    jmp location_else
location_je:
    mov rbx, 3
    jmp location_else
location_jne:
    mov rbx, 4
    jmp location_else
location_else:

    ; exitシステムコール
    mov rax, 60
    xor rdi, rdi
    syscall
