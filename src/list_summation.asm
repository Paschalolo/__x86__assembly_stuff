

SECTION .data 
	; Define constants 
	EXIT_SUCCESS equ 0 
	EXIT_sys equ 60 


; Define data 
	align 4 
	lst dd 1002 , 1003 , 1004 , 1005 , 1008 , 1010
	len dd 5
	sum dd 0 

SECTION .text 
	global _start 

_start : 	
	mov ecx , dword[len] 
	xor rdi , rdi 
	mov rcx , lst
sumLoop: 
	mov eax , qword[lst + 4]
	lea rcx ,[rcx  + 4]
	add rdi , eax 
	sub ecx , 1 
	cmp ecx , 0 
	jne sumLoop 

	; Move values back to storage 
	mov dword[sum] , rdi

	mov rdi , EXIT_SUCCESS
	mov rax , SYS_exit 
	syscall
