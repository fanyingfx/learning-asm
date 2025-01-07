%include "ModX86Asm3eNASM.inc"
section .text
global CalcResultI64_a
CalcResultI64_a:
    ; a*b*c*d
   movsx rax, dil
   movsx r10,si
   imul rax,r10
   movsxd r10,edx
   imul r10,rcx
   imul rax,r10
   ; e * f * g * h
   movsx r10,r8b
   movsx r11,r9w
   imul r10,r11
   movsxd r11,dword [rsp+8]
   imul r11,[rsp + 16]
   imul r10,r11
   ; Calculate (a * b * c * d) + (e * f * g * h)
   add rax,r10
   ret

 
global CalcResultU64_a
CalcResultU64_a:
    ; a + b + c + d 
    movsx rax,dil   ;rax = a
    movsx r10,si    ;r10 = b
    add rax,r10     ;rax = a+b
    mov r11d,edx    ;r11 = c
    add r11,rcx     ;r11 = c + d
    add rax,r11     ;rax = a + b + c + d
    ; e + f + g + h
    movzx r10,r8b       ;r10 = e
    movzx r11,r9w       ;r11 = f
    add r10,r11         ;r10 = e + f
    mov r11d,[rsp + 8]  ;r11 = g
    add r11,[rsp+16]    ;r11 = g + h
    add r10,r11         ;r10 = e + f + g + h

    xor edx,edx     ;zero
    div r10         ;rdx:rax = rdx:rax / r10

    mov rcx,[rsp+24]
    mov [rcx],rax
    mov rcx,[rsp+32]
    mov [rcx],rdx
    ret