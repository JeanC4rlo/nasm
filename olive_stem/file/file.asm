section .data
    pathname dd "file.txt", 0

section .bss
    buffer resb 1024

section .text
    global main

main:
    ; open(path, flag)

    ; Preparando o argumento com o caminho do arquivo
    mov ebx, pathname

    ; Preparando o argumento com a flag da operação (read-only - 0)
    mov ecx, 0
    
    ; Preparando a syscall "open" (5)
    mov eax, 5
    int 80h

    ; read(id, buffer, size)

    ; Movendo o arquivo que foi lido (dado que o identifier saiu em eax)
    mov ebx, eax

    ; Preparando o argumento que contém o buffer 
    mov ecx, buffer

    ; Preparando o argumento que tem o tamanho do arquivo
    mov edx, 1024

    ; Preparando a syscall "read" (3)
    mov eax, 3
    int 80h

    mov eax, 1
    mov ebx, 0
    int 80h
