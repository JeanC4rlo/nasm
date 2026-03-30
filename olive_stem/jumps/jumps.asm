section .data

section .text
    global _start

_start:
    mov eax, 2
    mov ebx, 3
    cmp eax, ebx

    ; O comando CMP realiza uma subtração entre dois valores, atualiza o registrador
    ; EFLAGS e descarta o resultado da subtração

    ; Jumps são operações go-to, elas vão para um label se há uma correspondência positiva nas EFLAGS

    ; JL - Jump Lower
    jl lesser

    ; JMP - Jump Incondicional
    jmp _end

    ; JE - Jump Equals
    ; JNE - Jump Not Equals
    ; JG - Jump Greater
    ; JLE - Jump Less Equals
    ; JGE - Jump Greater Equals
    ; JZ - Jump Zero
    ; JNZ - Jump Not Zero

    ; Para operações unsigned
    ; JB - Jump Below ~= JL
    ; JA - Jump Above ~= JG
    ; JBE - Jump Below Equals ~= JLE
    ; JAE - Jump Above Equals ~= JGE

lesser:
    mov ecx, 1

_end:
    mov eax, 1
    int 80h

; OBS: O código Assembly vai linha por linha, então se o resultado de um JUMP for negativo, ele
; passa para a próxima linha de código disponível.
