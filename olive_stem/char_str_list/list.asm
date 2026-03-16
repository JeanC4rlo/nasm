; 4 - Char, String, List: List

section .data
    ; Cria uma lista de DBs (1 byte) consecutivos na memória, com
    ; os valores sendo da ordem respectiva.
    list DB 1, 2, 3, 4

section .text
    global _start

_start:
    ; Será possível averigual que os valores foram postos sequencialmente
    ; Todavia, não há como saber qual é o fim da fila, para isso, temos que
    ; definir uma convenção de representação.
    mov bl, [list]
    
    mov eax, 1
    int 80h
