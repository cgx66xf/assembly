;A program to compute the sum of squares from 1 to n
;Taner Paker 20.04.2022

section .data 

	SUCCESS		equ 0 ; Successful operation
	SYS_exit	equ 60 ; call code for terminate

	n		dd 10
	sumofsquares	dq 0

section .text
global _start
_start:

	mov		rbx, 1 ;i
	mov		ecx, dword [n]
sumLoop:
	mov		rax, rbx
	mul		rax
	add		qword [sumofsquares], rax
	inc		rbx
	loop		sumLoop

last:
	mov rax, SYS_exit ; call code for exit
	mov rdi, SUCCESS ; exit with success
	syscall






