%include "ModX86Asm3eNASM.inc"
section .text
global BitOpsU32_a
BitOpsU32_a:
    and edi,esi
    or edi,edx
    xor edi,ecx
    not edi
    mov eax,edi
    ret