%include "ModX86Asm3eNASM.inc"
section .text
global ShiftU32_a
ShiftU32_a:
    cmp ecx,32
    jae BadCnt

    mov eax,edx
    shl eax,cl
    mov [rdi],eax

    shr edx,cl
    mov [rsi],edx

    mov eax,1
    ret
BadCnt:
    xor eax,eax
    ret
