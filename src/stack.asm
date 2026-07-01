
; Stack 
;Process layout 
; ======================
; stack 
;

;
;	^
;	\	
;heap
;=========================

SECTION .data 
	numbers dq 121 , 122 , 123 , 124 , 125 
	len dq 5 

; **********************************************
SECTION .text 
	global _start 

_start : 
	
	; Loop to put numbers on stack 
	mov rcx , qword[len] 
	mov rbx , numbers 
	mov r12 , 0 
	mov rax , 0 

pushLoop: 
	
		
