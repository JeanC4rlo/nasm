section .data

section .text
    global _start

_start:
    mov eax, 0b1010
    mov ebx, 0b1100
    and eax, ebx

    ; Retorna 1 se ambos os bits são 1 e 0, caso contrário

    mov eax, 0b1010
    mov ebx, 0b1100
    or eax, ebx

    ; Retorna 1 se um dos bits são 1 e 0, caso não sejam

    mov eax, 0b1010
    not eax

    ; Inverte os bits

    ; Note que todas as 3 operações (AND, OR, NOT) realizam tais operações por todo
    ; o registrador, o que pode gerar resultados inesperados ou indesejados

    ; Sem o uso de bit shifiting, utilizamos xor com uma mask para fazer uma inversão dos bits que desejamos

    mov eax, 0b1010
    xor eax, 0b0111 ; Resultado: 0b1101

    mov eax, 1
    int 80h
