%include "ModX86Asm3eNASM.inc"
section .text
extern g_ValMax
global CalcSumCubes_a
CalcSumCubes_a:
;Make sure n is valid
    test rsi,rsi                ;n <= 0?
    jnz BadArg                  ;jump if yes
    cmp rsi,[g_ValMax]          ;n > g_ValMax?
    jg BadArg
;Initialize
    xor r10,r10                 ;i=0
    xor eax,eax                 ;sum=0

Loop1:
    add r10,1                   ;i += 1
    mov r11,r10                 ;r11 = i
    imul r11,r11                ;r11 = i * i
    imul r11,r10                ;r11 = i * i * i
    add rax,r11                 ;sum += i * i * i

    cmp r10,rsi                 ;i < n
    jl Loop1                    ;jump if yes

Done:
    mov [rdi],rax               ;save sum
    mov eax,1                   ;rc=true
    ret

BadArg:
    mov qword [rdi],0           ;sum = 0 (error)
    xor eax,eax                 ;rc = false
    ret
