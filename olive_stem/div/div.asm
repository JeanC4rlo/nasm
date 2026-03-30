section .data

section .text
    global _start

_start:
    mov eax, 11
    mov ecx, 2

    ; Preparando o registrador de resto
    xor edx, edx

    ; Funciona de forma similar à multiplicação. O resultado sai em eax. O resto sai em edx.
    div ecx

    mov eax, 0
    
    mov eax, -1
    mov ecx, 2

    ; Preparando os registradores para IDIV
    cdq

    ; Divisão que considera que os números são signed
    idiv ecx

    ; Algumas flags novas aparecem como:
    ;
    ; ZF - Zero Flag, se o resultado da operação gera 0
    ;
    ; Todavia, flags após a operações de divisão são indefinidas. Dessa forma, não
    ; devemos usá-las.

    ; Operações inválidas ou que estourem a memória serão tratadas como exceções.

    mov eax, 1
    int 80h
