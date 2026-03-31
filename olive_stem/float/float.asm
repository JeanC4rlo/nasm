section .data
    x dd 3.14
    y dd 2.1

section .text
    global _start

_start:
    ; MOVSS é o MOV usando scalar (valor único de magnitude) com precisão simples (float
    ; de 32 bits)
    movss xmm0, [x]

    ; Não usamos eax, ebx, ecx nem edx, mas registradores especiais XMM, que vão de 0
    ; até 15

    movss xmm1, [y]
    addss xmm0, xmm1 ; ADDSS é o ADD para float

    movss xmm0, [x]
    movss xmm1, [y]
    subss xmm0, xmm1 ; SUBSS é o SUB para float

    movss xmm0, [x]
    movss xmm1, [y]
    mulss xmm0, xmm1 ; MULSS é o MUL para float

    movss xmm0, [x]
    movss xmm1, [y]
    divss xmm0, xmm1 ; DIVSS é o DIV para float

    movss xmm0, [x]
    movss xmm1, [y]
    ucomiss xmm1, xmm0 ; UCOMISS é o CMP para float

    ; Com o UCOMISS, usamos JB, JBE, JE, JA e JAE ao invés de JL, JLE, JE, JG e JGE

    ja above
	jmp end

above:
	mov ecx, 1

end:
    mov eax, 1
    mov ebx, 0
    int 80h
