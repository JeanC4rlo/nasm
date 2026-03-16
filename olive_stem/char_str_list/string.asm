; 4 - Char, String, List: String

section .data
    ; Usar "" vai criar uma representação de string. O 0 é um indicador nulo,
    ; marcando qual é o fim do array de char (string) indicado.
    string DB "ABC",0
    string2 DB "ABD",0

section .text
    global _start

_start:
    mov bl, [string]
    mov bl, [string2]
    mov eax, 1
    int 80h
