; Região onde são armazenadas variáveis
section .data

; Região onde são armazenadas informações (header)
section .text
    ; Diretiva que diz onde o código começa (no label _start)
    global _start

_start:
    mov eax, 1
    mov ebx, 1
    
    ; int significa interrupção, 80h é a diretiva de encerramento de programa
    int 80h

; Para buildar o programa, usamos algo similar ao GCC
; nasm -f <formato> -o <objeto>.o <programa>.asm
; 
; nasm é o assembler, -f <formato> define o formato do arquivo (como elf - Executable
; and Linkable Format), -o <objeto>.o define o objeto de saída e <programa.asm> define
; o que vai ser compilado.
;
; Para linkar o programa usamos
; ld -m <arquitetura> -o <saida> <objeto>.o
; 
; ld é o linker, -m <arquitetura> define a arquitetura que será utilizada na compilação
; (sendo elf_i386 o que emula o chip i386, da Intel, com diretivas de 32 bits), -o <saida>
; define o executável de saída e <objeto>.o é o objeto a ser linkado.
