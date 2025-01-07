%include "ModX86Asm3eNASM.inc"
section .text
global SignedMin1_a
SignedMin1_a:
    mov eax,esi
    cmp eax,edi
    jle F1              ;jump if a <= b
    mov eax,edi         ;eax = b

F1:
    cmp eax,edx
    jle F2              
    mov eax,edx
F2:
    ret
global SignedMin2_a
SignedMin2_a:
    cmp edi,esi
    cmovg edi,esi
    cmp edi,edx
    cmovg edi,edx
    mov eax,edi
    ret
global SignedMax1_a
SignedMax1_a:
    mov eax,esi
    cmp eax,edi
    jge F3
    mov eax,edi
F3:
    cmp eax,edx
    jge F4
    mov eax,edx
F4:
    ret
global SignedMax2_a
SignedMax2_a:
    cmp edi,esi
    cmovl edi,esi
    cmp edi,edx
    cmovl edi,edx
    mov eax,edi
    ret
