
; Simple Example program to compute the 
; sum of sqayre from 1 to n 

SECTION .data 
	SUCCESS equ 0 
	SYS_exit equ 60
	; Define Dat 
	n dd 10 
	sumofsquares dq 0 

; ***************************************************************

SECTION .text

	global _start 
align 8 
_start :
	; --------------------
	; Apporach 
	; for(int i = 1 ; i <= n ; i++)
	;	sumofsquaress += i ^2 ;
	mov ebx , dword[n] 
	mov ecx , 0 
	xor rdi , rdi 
func : 
	add ecx , 1 
	mov eax , ecx 
	mul ecx 
	add rdi , rax 
	cmp ecx , ebx 
	jbe func 
	; mov temporary reguster to value 
	mov qword[sumofsquares] , rdi 

	; Terminate the prcoess 
	mov rdi , SUCCESS
	mov rax , SYS_exit
	syscall
	
	
