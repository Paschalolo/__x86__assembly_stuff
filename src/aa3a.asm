

SECTION .text 
; int32_t SumvalsI32_a (int32_t a , int32_t b , int32_t c , int32_t d , int32_t e , int32_t f , int32_t g, int32_t h);  
global SumvalsI32_a

SumvalsI32_a : 
	add edi , esi 
	add edx  , ecx 
	add r8d , r9d
	add edi , dword[rsp + 8] ; accessing g 
	add edx , dword[rsp + 16] ; accesing h 
	mov eax , edi 
	add edx , r8d 
	add eax , edx 
	ret


section .note.GNU-stack noalloc noexec nowrite progbits

