; inc operation 
; 
SECTION .data
	align 2
	ally dw 0x1234
SECTION .text 
	global _start 

_start : 
	inc rax 
	inc al ; increment a 8bit register 
	inc ax ; increment a 16 bit register 
	inc word[ally] ; increment a 16 mit data in a memory location 
	inc qword[<memory location>]

	; addition with carry 
	; adc

SECTION .data 
	align  16
	dquad1 ddq 0x1A000000000
	dquad2 	ddq 0x2C00000000
	dquad3 ddq 0

	mov rax , qword[dquad1] 
	mov rdx , qword[dquad + 8 ] 

	add rax , qword[dquad2]
	adc rdx , qword[dquad2 + 8 ] 

	mov qword[dquad3] , rax
	mov qword[dquad3 + 8 ] , rdx 
