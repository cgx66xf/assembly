;simple example program demonstrating conditionals
;Taner Paker 2022

section		.data

EXIT_SUCCESS	equ	0
SYS_exit	equ	60


currNum		dq	10
myMax		dq	20


section 	.text
global _start
_start:

;***************** Code here****************

mov	rax, qword [currNum]
cmp	rax, qword [myMax]
jle	notNewMax
mov	qword [myMax], rax
notNewMax:




;********************************************

last:
	mov	rax, SYS_exit
	mov	rdi, EXIT_SUCCESS
	syscall
	
