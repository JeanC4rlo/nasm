extern printf
extern exit

extern sum

section .data
	num dd 1
	msg db "Oi, sou Jean", 0
	fmt db "Frase: %s %d", 10, 0
	
	sumMsg db "Soma: %d", 10, 0

section .text
	global main

; Para códigos que usam os extern de C, usamos main como nossa função principal
main:
	push dword [num]
	push msg
	push fmt
	call printf

	push 2
	push 3
	call sum
	
	; A função sum não existe na linguagem C, nós criamos ela no arquivo func.c

	push eax
	push sumMsg
	call printf

	push 0
	call exit
	
; Note que, assim, podemos facilmente usar funções presentes na linguagem C.
; Funções que realizam retornos tem eles localizados em eax.
