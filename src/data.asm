
; Examples of section .data 

SECTION .data 
	bVar db 10 ; byte vairable 
	cVar db "H"; single character 
	strng db "Helo world", 0x00 ; string 
	wVar dd 5000 ; 32 bit word 
	arr dd 100, 200 , 300 ; array of 3 elements 
	qVar dq 10000000000 ; 64 bit vairable 

SECTION .bss ; this is te uninitialized data section
	pBa resb 100 ; reserve 100 bytes
	pBa1 resd 100 ; reserve 100 elemnets of 32  double word array 

SECTION .text 
	global _start ; entry point to the program 

_start : 
	
