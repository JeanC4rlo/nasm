section .data
    list DB 1, 2, 3, 4

section .text
    global _start

_start:
    mov eax, 0
    mov cl, 0

loop:
    mov bl, [list + eax]
    add cl, bl
    inc eax ; Increment Instruction - soma um ao registrador de destino

    cmp eax, 4
    je end
    jmp loop

end:
    mov eax, 1 ; Sair do programa
    mov ebx, 0 ; Status da saída: 0
    int 80h
