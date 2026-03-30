section .data

section .text
    global _start

_start:
    mov eax, 1
    mov ebx, 2
    
    ; A operação ADD adiciona o primeiro operando ao segundo operando, colocando o resultado
    ; no registrador do primeiro operando. Ou seja, o primeiro operando sempre deve ser um registrador
    add eax, ebx
    
    mov al, 0b11111111 ; A notação 0b indica que o
    mov bl, 0b00000001 ; literal representado está em binário
    add al, bl

    ; A operação ADD também altera o registrador EFLAGS, que registra quais flags
    ; foram ativas
    ;
    ; PF - Parity Flag (1 se ímpar, 0 se par)
    ; IF - Interrupt Flag (1 se possível, 0 se impossível)
    ; CF - Carry Flag (1 se houver carry na operação, 0 se não)
    ; AF - Auxiliary Flag (1 se houver carry no 4º bit)

    ; A operação ADC verifica se EFLAGS possui um carry (através do CF)
    ; Dessa forma, quando chamamos ADC, o flag é somado ao registrador de destino
    ; (como um ADD registrador, 1)

    adc ah, 0

    mov eax, 1
    int 80h