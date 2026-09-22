

SECTION .text 

	global _start 

balign 8 
_start : 
	vmulps zmm1 , zmm2 , [rax] {1to16} ; Broadcasts the 32 bit floating point in rax to all the registers of zmmm2 , and the boradcast of rax and put in zmm1 
