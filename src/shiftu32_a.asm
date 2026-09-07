
; PRgram 


SECTION .text 

global shiftU32_a

shiftU32_a : 
	cmp ecx , 32 
	jae Badcnt 
	mov eax , edx 
	shl eax , cl 
	mov dword[rdi]  , eax 

	shr edx , cl 
	mov dword[rsi] , edx 

	mov eax , 1 
	ret 
Badcnt :
	xor rax , rax 
	ret 
