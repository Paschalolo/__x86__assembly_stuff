


SECTION .text 
	global BitOpsUn32_cpp 

BitOpsUn32_cpp :
	; Calculate ~(((a & b) | c ) ^ d) 
	and rdi , rsi 
	or rdi , rdx 
	xor rdi , rcx 
	mov rax , rdi 
	not rax 
	ret 


section .note.GNU-stack noexec  progbits noalloc nowrite 

