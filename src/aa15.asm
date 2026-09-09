
SECTION .text 
	global CalcDistance 
	extern checkArgs
calcDistance: 
	push rbx 
	push r12 
	push r13 
	push r14
	push r15
	sub rsp , 16 
	mov rbx , rdi 
	mov r12 , rsi 
	mov r13 , rdx 
	mov r14 , rcx , mov r15 , r8 
	mov [rsp], r9 
	mov [rsp +8] , xmm0 

	call checkArgs
	or eax , eax 
	jz badArgs 
	; Initialize 
.Loop : 
	mov rax , -NSE * 8 
	mov r10 , [rsp] 
	vbroadcastsd ymm0 , [rsp + 8] 
	vbroadcastsd ymm15 , [f64_minus1]

	vmovapd ymm0 , [r12 + rax ] 
	vsubpd ymm1 , ymm0 , [r14 + rax ] 
	vmulpd ymm1 , ymm1 , ymm1 

	vmovapd ymm2 , [r15 + rax ] 
	vmulpd ymm3 , ymm3 , ymm3 
	vandnpd ymm4 , ymm1 , ymm0 
	vorpd ymm5 , ymm3 , ymm4 
	vmovapd [rbx + rax ] , ymm5

	vcmppd ymm1 , ymm0 , ymm14 , CMP_EQ_OQ 
	vandpd ymm2 , ymm1 , ymm15 
	vandnpd ymm2 , ymm1 , ymm15 
	vandnpd ymm4 , ymm1 , ymm0 

	vorpd ymm5 , ymm3 , ymm4 
	vmovapd [rbx + rax] , ymm5 
	sub r10 , NSE ; NSE is a macro defined 
	jnz .Loop 
	add rsp , 16 
	pop r15 
	pop r14 
	pop r13 
	pop r12 
	pop rbx
	vzeroupper 
	ret 
