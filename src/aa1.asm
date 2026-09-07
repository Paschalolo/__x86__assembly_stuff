

; Program by Paschal Ahanmisis 
SECTION .data 
SECTION .text 
	global AddSubI32_a
	
	; extern "C" int AddSubI32_a(int a , int b , int c , int d ) ;
	; (a + b) - (c + d) + 7;
AddSubI32_a :
	add edi , esi 
	add edx , ecx 
	mov eax , edi 
	sub eax , edx
	add eax , 7
	ret 


section .note.GNU-stack noalloc noexec nowrite progbits
