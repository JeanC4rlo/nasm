; 4 - Char, String, List: Char

section .data
    ; Assembly usa tabela ASCII para mapear os valores numéricos para caracteres
    char DB 'A'

section .text
    global _start

_start:
    ; Valor armazenado: 65 ('A' em ASCII)
    mov bl, [char]

    mov eax, 1
    int 80h