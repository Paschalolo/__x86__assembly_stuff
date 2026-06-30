
/*
	Author : Paschal Ahanmisi 
	Basic program simply printf out Hello everyone
*/
SECTION .data 
	mydata db "Hello Everyone" , 0 
	mydataLen equ $-mydata
SECTION .text
	global _start 

_start : 	
	
