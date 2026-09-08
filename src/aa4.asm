


SECTION .text 
	global CalcSumCubes 

CalcSumCubes : 
	test rsi , rsi 
	jle .BadArgs 
	cmp rsi , ,qword[g_val_max] 
	jg .BadArgs 

; Initialize 
	xor r10 , r10 
	xor rax , rax 
	mov r11 , r10 

.Loop1: 
	add r10 , 1 
	mov r11 , r10 
	lea r11 , [0 + (r11 * r10)]
	lea r11 , [0 + (r11 * r10)]
	add rax , r11 

	cmp r10 , rsi 

.Done : 
	mov qword[rdi] , rax 
	mov eax , 1 
	ret 
.BadArgs : 
	xor rax , rax 
	ret 
