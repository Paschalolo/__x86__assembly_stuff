; Lea can be dispatched on multiple ports for diffrenct architecture 
; it is good to use it compared to additon and subtraction or multiplication 


loop : 
	lea ecx , [rcx + rcx * 8 ] ; rcx *9
	; Note two operand lea is faster than three -operand lea 
