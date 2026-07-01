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

	; subtraction 

SECTION  .text 
	mov al , byte[bNum1] 
	sub al , byte[bNum2]
	mov byte[bAns] , al 

	; Word 
	mov ax , word[bNum1] 
	sub ax , word[bNum2] 
	mov word[bAns] , ax 

	; Quad Word 
	mov rax , qword[qNum1]
	sub rax , qword[qNum2]
	mov qword[qAns] , rax 


; Dec -> this decrments the memeroy location or register by 1 
; it is not as fast as lea or sub . Use it is better 

SECTION .text 
	dec rax 
	dec byte[bNum] 
	dec word[wNum] 
	dec dword[dNum] 
	dec qword[qNum] ; qNum = qNum -1 ;

; Multiplication 
; mul <src> 
; imul -> signed numbrs ; mul for unsigned integers

SECTION .text 
	mov eax , dword[dMul1] 
	mul dword[dMul2] 
	mov dword[dMul3] , rax 
	mov dword[dMul3 + 4 ] , rdx; rdx contains the upper bits of the arithmetic  
