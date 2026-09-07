

SECTION .text 

global AddSubI64a_a
 ; long long AddSubI64a_a(long long a, long long b, long long c, long long d);

 AddSubI64a_a : 
 	; Calculate (a + b) - (c + d) + 12345678900
	add rdi , rsi 
	add rcx , rdx 
	sub rdi , rcx
	mov rax , 12345678900 
	add rax , rdi
	ret 
