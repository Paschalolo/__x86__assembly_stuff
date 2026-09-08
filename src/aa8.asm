

SECTION .data 
	ptr: db "Hello world", 0x10 , 0x00

SECTION .text 
	global _start 
	extern printf
_start : 
	xor rax , rax 
	lea rdi , [ptr]
	call printf

	mov rax , 0x5d 
	xor rdi , rdi 
	syscall 

