section .data

section .text
    global main

addTwo:
    push ebp
    mov ebp, esp
    
    ; Segundo argumento, que fica abaixo do ret do call de addTwo
    mov eax, [ebp + 8]

    ; Primeiro argumento, que fica abaixo do segundo argumento
    mov ebx, [ebp + 12]

    ; add eax (primeiro argumento), ebx (segundo argumento)
	add eax, ebx
	
    pop ebp
	ret

main:
    ; Armazena na stack (+4 posições)
	push 4
	
	; Armazena na stack (+4 posições)
	push 1

    ; Armazena na stack (+4 posições)
	; Armazena a região de retorno com o program counter, que fica no registrador esp
	call addTwo
	
	mov eax, 1
	mov ebx, 0
	int 80h	
