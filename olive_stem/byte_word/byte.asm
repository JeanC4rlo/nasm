; 3 - Working with Bytes and Words

section .data
    num DB 1
    num2 DB 2

section .text
    global _start

_start:
    ; Move o valor de num para ebx (todos os 32 bits a partir dele - desconsidera o tamanho)
    ; Isso é um problema, já que não queremos mover 32 bits, mas 8 (o tipo é DB)
    mov ebx, [num]
    mov ecx, [num2]

    ; Resetando valores para o problema ficar mais claro no debug:
    mov ebx, 0
    mov ecx, 0

    ; O problema em questão não encontra-se nos dados, mas nos registradores que
    ; estamos utilizando. Para o propósito de 1 byte, devemos usar as partes high
    ; e low do registrador de 16 bits. E para o propósito de 2 bytes, devemos usar
    ; registradores que não são extended (E)

    ; Cuidado: isso causa um problema se formos usar todo o bx, mas, nesse
    ; caso, não tem problemas
    mov bl, [num]
    mov bh, [num2]

    ; 32 bits: eax, ebx, ecx, edx
    ; 16 bits: ax, bx, cx, dx
    ; 8 bits: ah, al, bh, bl, ch, cl, dh, dl

    mov eax, 1
    int 80h
