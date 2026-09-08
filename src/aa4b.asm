

SECTION .text 
	global sum_elemnts_32 

sum_elements_32 : 
	xor rax , rax 
	mov rcx , rax 
	or rsi , rsi 
	jz .Done 
.Loop: 
	add eax , dword[rdi + (rcx*4)]; x[i] indexing of the array 
	add rcx , 1 
	cmp rcx , rsi 
	jnz .Loop 
.Done
	ret 
