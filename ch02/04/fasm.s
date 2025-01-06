%include "ModX86Asm3eNASM.inc"
section .text
global AddSubI64a_a
AddSubI64a_a:
    add rdi,rsi
    add rdx,rcx
    sub rdi,rdx
    add rdi,7
    mov rax,rdi
    ret
global AddSubI64b_a
AddSubI64b_a:
    add rdi,rsi
    add rdx,rcx
    sub rdi,rdx
    mov rax,12345678900
    add rax,rdi
    ret
