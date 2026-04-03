section .data
    pathname dd "write.txt", 0
    content dd "Hello World!", 0ah, 0dh, "$"

section .text
    global main

main:
    ; open(file, operation, permissions)

    ; eax: open
    mov eax, 5

    ; ebx: file
    mov ebx, pathname

    ; ecx: operation
    mov ecx, 0o0001 | 0o0100
    ; write (0o0001) e create (0o0100)

    ; edx: permissions
    mov edx, 0o0100 | 0o0200 | 0o0400
    ; execute (0o0100), write (0o200) e read (0o400) 
    
    int 80h

    ; write(file, content, size)

    mov ebx, eax
    ; ebx: file
    
    mov eax, 4
    ; eax: write
    
    mov ecx, content
    ; ecx: content

    mov edx, 15
    ; edx: size
    
    int 80h

    mov eax, 1
    mov ebx, 0
    int 80h
