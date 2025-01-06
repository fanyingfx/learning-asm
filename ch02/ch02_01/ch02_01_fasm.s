%include "ModX86Asm3eNASM.inc"
section .text
global AddSubInt32_a
AddSubInt32_a:
    add edi,esi
    add edx,ecx
    sub edi,edx
    add edi,7
    mov eax,edi
    ret