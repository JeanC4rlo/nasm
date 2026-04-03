section .data
    pathname dd "lseek.txt", 0

section .bss
    buffer resb 10

section .text
    global main

main:
    mov eax, 5
    mov ebx, pathname
    mov ecx, 0
    int 80h

    ; lseek(file, offset, operation)
    ; 
    ; file: File Identifier
    ; offset: número de bytes a partir do começo do arquivo
    ; operation: número que identifica a operação desejada

    ; ebx: file
    mov ebx, eax

    ; eax: lseek
    mov eax, 19

    ; ecx: offset
    mov ecx, 20

    ; edx: operation
    mov edx, 0
    int 80h

    mov eax, 3
    mov ecx, buffer
    mov edx, 10
    int 80h

    mov eax, 1
    mov ebx, 0
    int 80h
