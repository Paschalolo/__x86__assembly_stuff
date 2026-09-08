

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

; int64_t SumvalsI32_mix (int32_t a , int8_t b , int32_t c , int64_t d , int16_t e , int32_t f , int8_t g, int64_t h); 
SumvalsI32_mix : 
	movsxd rdi , edi 
	movsx rsi , sil 
	movsxd rdx , edx
	add rdi , rsi 
	add rdx , rcx 
	movsx r8 , r8w
	movsx r9 , r9d 
	add r8 , r9 
	movsx r9 , byte[rsp+8]
	add rdi , qword[rsp+16]
	mov rax , rdi 
	add rdx , r9 
	add rax , rdx
	ret

	
section .note.GNU-stack noalloc noexec nowrite progbits

