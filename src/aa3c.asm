

SECTION .data

	global CalcMat2dSquare 

CalcMat2dSquare : 
	or r12 , rcx 
	and r12 , rcx 
	jz InvalidSize
;---------------------------------------------------------------------------------;
;	RDI = Y , RSI = X , RDX = M , RCX = N 
;	R8 = I , R9 = J , R10 = TEMPVAL RAX = TEMPVAL 
;
;
;-----------------------------------------------------------------------------------
; iNITIALIZE 
	xor r8 , r8 
Loop1: 
	xor r9 , r9 
	imul rax , rdx 
	add rax , r8 

	mov r10d , dword[rsi + rax * 4] 
	imul r10d , r10d

	mov rax , r8 
	imul rax , rcx 
	add rax , r9 

	mov dword[rdi+ rax * 4 ] , r10d

; Update inner for-loop counter 
	add r9 ,1 
	cmp r9 , rcx 
	jb Loop2 

; Update outer for-loop counter 
	add r8 ,1 
	cmp r8 , rdx 
	jb Loop1 

InvalidSize : 
	ret 
