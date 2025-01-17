%include "ModX86Asm3eNASM.inc"
section .text
global SumValsI32_a
SumValsI32_a:
; a+b+c+d
    add edi, esi ; edi = a+b
    add edx, ecx ; edx = c+d
    add edi, edx ; edi = a+b+c+d
; e+f+g+h
    add r8d,r9d     ; r8d = e + f
    mov eax,[rsp+8] ; eax = g
    add eax,[rsp+16]; eax = g + h
    add eax,r8d     ; eax = e + f + g + h
; a+b+c+d+e+f+g+h
    add eax,edi
    ret
global MulValsU64_a
MulValsU64_a:
    mov r10,rdx ; save copy of c
    mov rax,rdi ; rax = a
    mul rsi     ; rax = a*b
    mul r10     ; rax = a*b*c
    mul rcx     ; rax = a*b*c*d
    mul r8     ; rax = a*b*c*d*e
    mul r9     ; rax = a*b*c*d*e*f
    mul qword [rsp+8]
    mul qword [rsp+16]
    ret
