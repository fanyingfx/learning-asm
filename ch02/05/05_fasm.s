%include "ModX86Asm3eNASM.inc"
section .text
global MulI32_a
MulI32_a:
    mov eax,edx
    imul edx,ecx
    mov [rdi],edx

    movsxd rax,eax
    movsxd rcx,ecx
    imul rcx            ; rdx:rax = a*b (128-bit)
    mov [rsi],rax
    ret
global DivI32_a
DivI32_a:
    or ecx,ecx
    jz InvalidDivisor

    mov eax,edx ;eax=a
    cdq         ;sign-extend a to 64-bits (edx:eax)
    idiv ecx    ;eax = quotient, edx = remainder

    mov [rdi],eax
    mov [rsi],edx

    mov eax,1
    ret
InvalidDivisor:
    xor eax,eax
    ret