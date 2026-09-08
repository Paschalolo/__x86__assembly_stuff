

SECTION .text 
	; C
	ounting string 
; Count_string(*s , char c ) 
Count_string : 
	xor rax , rax
	mov rcx , 0 ; this is the null operator 
Loop1: 
	lodsb
	test rdi , rdi 
	je fin
	cmp dil , sil  
	cmove r9 , 1
	add rax , r9
	sub rdi , 1
	jmp Loop1;
fin : 
	ret 
