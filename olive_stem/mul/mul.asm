section .data

section .text
    global _start

_start:
    mov eax, 2
    mov bl, 3

    ; A operação MUL requer apenas um operando: aquele que será multiplicado
    ; com o valor presente no registrador EAX (isso ocorre pois EAX é serve
    ; um propósito de acumulador - acummulator)
    mul bl

    mov eax, 0

    mov al, 0xFF
    mov bl, 2

    ; Quando a multiplicação é maior que o resultado de destino, diferentemente de ADD e SUB,
    ; o resultado irá expandir automaticamente para outros registradores, 
    ; garantindo que a operação tenha o resultado correto
    mul bl

    mov eax, 0

    mov al, 0xFF
    mov bl, 2

    ; Diferente de MUL, que assume que o primeiro operando é unsigned,
    ; IMUL assume que o primeiro operando é signed
    imul bl

    mov eax, 1
    int 80h
