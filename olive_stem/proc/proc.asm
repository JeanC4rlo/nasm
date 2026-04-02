section .data

section .text
	global main

addTwo:
	add eax, ebx

	; Armazena a região de retorno com o program counter, que fica no registrador esp
	ret

main:
	mov eax, 4
	mov ebx, 1
	call addTwo
	
	mov eax, 1
	mov ebx, 0
	int 80h	
