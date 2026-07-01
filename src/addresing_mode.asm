

; Register mode addressing 
	mov eax , ebx 
	
	; IMMEDIATE mODE ADDressing 
	mov eax , 123 

	; Memory mode addressing 
	mov rax , qword[qNum] 

	mov rbx , lst 
	mov rsi , 8 

	mov eax , dword[lst+ 8] 
	mov eax  , dword[rbx + 8]
	mov eax  , dword[rbx + rsi]
	; Addressing format 
	; [(base adress ) + (index * scale) + displacement]

	mov eax , dword[var1]
	mov rax , qword[rbx + rsi]
	mov ax, word[lst+4] 
	mov bx, word[lst + rdx + 2 ]
	mov rcx , qword[lst + (rsi* 8)]
	; Get the third elemnt 
	mov rcx , qword[lst + rsi  *4]
