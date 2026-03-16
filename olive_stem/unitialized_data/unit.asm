; 5 - Unitialized Data

; .bss cria uma seção Block Starting Symbol, onde alocamos memória
section .bss
    ; Usamos RES ao invés de D aqui, porque não estamos Definindo, mas REServando
    ; Além disso, passamos o número de casas consecutivas que serão reservadas para
    ; aquele determinado tipo
    num RESB 3

; A declaração, realizada aqui em .data, consome espaço no executável, dando
; à variável um valor.

section .data
    num2 DB 3 DUP(0) ; diferente de RESB 3

section .text
    global _start

_start:
    ; Isso seria uma ótima forma de mover a informação:
    ;
    ; mov [num], 1
    ;
    ; Se não fosse pelo detalhe de que o assembler não consegue deduzir o tamanho
    ; do valor 1 que fora passado. Dito isso, normalmente passamos o valor a um
    ; registrador e do registrador passamos ao espaço alocado.

    mov bl, 1
    mov [num], bl
    mov [num + 1], bl
    mov [num + 2], bl

    ; Lembrando que o identificador do espaço reservado sempre aponta para a primeira
    ; casa. Caso desejemos deslocar casas em relação a ele, usamos o operador de soma.
    ; Sendo assim, o primeiro byte alocado após num é num + 1

    mov eax, 1
    int 80h
