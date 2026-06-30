; SImple example demostrating basic format and layout 
; Paschal Ahanmisi 


; *8*****************************************


SECTION .data 
	EXIT_SUCCESS equ 0 
	SYS_exit equ 0x3c

; Byte (8-bit ) vairable decleration 

bVar1 db 17 
bVar2 db 9 
bVar3 db 0 

;-------------------

; Word (16 bit) vairable declerations
align 4 
wVar1 dd 17000000
wVar2 dd 9000000
dResult dd 0 

; -----------

; QuadWord (64 bit) 
align 8 
qVar1 dq 19733333
qVar2 dq 900000000
qVar3 dq 0 
; ***********************************

; code section 

SECTION .text 
	global _start 
align 8
_start : 
	; perfrom a series of very basic addition operations to
	; demonstrate program format 
	; Byte example 
	mov al , byte[bVar1]
	add al , byte[bVar2] ; 
	mov byte[bVar3] , al 
 ; -------------------------
; Word example 
	mov ax , word [wVar1]
	add ax , word[wVar2] 
	mov word[dResult] , ax 

; -----------

; Quad word example  
	mov rax , qword[qVar1]
	add rax , qword[qVar2]
	mov qword[qVar3] , rax

; ***********************************
; Done terminate program 
	mov rax , SYS_exit ; call code for exit 
	mov rdi , EXIT_SUCCESS ; exit program with success 
	syscall
