section .data

section .text
    global _start

_start:
    ; Na subtração, eflags atuam de uma forma um pouco diferente do convencial:
    ;
    ; CF - Carry Flag, marca quando houve um empréstimo (borrow)
    ; SF - Sign Flag, marca 1 se o resultado foi signed (negativo) e 0 se unsigned (positivo)

    mov eax, 3
    mov ebx, 5
    sub eax, ebx  ; Resultado: -2

    mov ebx, 2
    add eax, ebx  ; Resultado: 0

    mov eax, 1
    int 80h
