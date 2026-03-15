section .data
    ; Para declarar uma variável definimos um nome, um tipo
    ; (quantos bits serão alocados) e um valor.
    ;
    ; Tipos: DB (1 byte), DW (1 word - 2 bytes), DD (4 bytes), DQ (8 bytes), DT (10 bytes)
    ;   Note que os tipos desconhecem os valores que estão lá dentro, é apenas um
    ;   alocamento de bits

    ; Exemplo: alocando DD (4 bytes) de espaço para o valor 5, com nome num
    num DD 5

section .text
    global _start

_start:
    ; Esse comando move o valor do ponteiro de num para ebx
    mov ebx, num

    ; Esse comando move o valor de num para ebx
    mov ebx, [num]

    ; Indica que o programa correu bem (status 1)
    mov eax, 1
    int 80h
