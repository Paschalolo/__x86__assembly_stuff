; calling stack convetnion 

; int main( int argc , char** argv ) 

SECTION .text 
align 8
	global _start 

_start : 
	cmp rdi , 0 
	je no_arg 
	; TIme to print values 
	lea rsi , [rsi + 8]
	mov rax , 1 
	mov rdi , 1 
	mov rdx , 4
	syscall

	; sync results 
	mov rax, 0x4a
	mov rdi , 1 
	syscall 
no_arg : 
	mov rdi , 0 
	mov rax , 60 
	syscall
