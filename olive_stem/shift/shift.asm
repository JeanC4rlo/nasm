section .data

section .text
    global _start

_start:
    mov eax, 0b0010  ; Valor 2 em binário
    shr eax, 1       ; 0010 -> 0001

    ; O shift right realiza uma divisão por 2

    mov eax, 0b0010  ; Valor 2 em binário
    shl eax, 1       ; 0010 -> 0100

    ; O shift left realiza uma multiplicação por 2

    ; Também existem os comandos de shift que são assigned (A).
    ;
    ; São eles: SAL e SAR
    ;
    ; Ambos os comandos são equivalentes a SHL e SHR, respectivamente.
    ; Todavia, o bit de sinal é preservado.

    mov eax, 1
    int 80h
