


SECTION .text 
	global MulIntegers_a 
; Nasm and GNU calling contentions and ABI 
; function rdi , rsi , rdx , rcx , r8 , r9 , Add the rest tot the stack 
MulIntegers_a : 
	movsx rdi , dil 
	mov qword[rsp+RZ_A] , rdi 
