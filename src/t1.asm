;	Author : Paschal Ahanmisi 
;Basic program simply printf out Hello everyone

SECTION .data 
	mydata db "Hello Everyone" , 0 
	mydataLen equ $-mydata
SECTION .text
	global _start 

_start : 	
	mov rdi , 0x01 ; fd to 1
	mov rsi , mydata 
	mov rdx , mydataLen
	mov rax , 0x01 ; syscall read 
	syscall 

	; temrination of the process 
	xor rdi , rdi 
	mov rax , 0x3c 
	syscall
