
Calcz_app : 
	; CalcZ_cpp(float* z, const float* x, const float* y, size_t n)
	; z = rdi , x = rsi , y = rdx , rcx = n
	test rcx , rcx 
	jne fin 
	xor r8 , r8 

.vector_loop : 
	cmp rcx , 8
	jl .scalar_loop
	vmovaps xmm0 , [rsi + (r8 * 32)]
	vaddps xmm1 , xmm0 , [rdx + (r8* 32)]
	vmovaps [rdi + ( r8 * 32) ] , xmm1 
	add r8 , 8 
	sub rcx , 8 
	jmp .vector_loop 
.scalar_loop: 
	cmp rcx , 0 
	je fin 
	vmovss xmm0 , [rsi +(r8*4)]
	vaddss xmm1 , xmm0 , [rdx + (r8*4) ]
	vmovss [rdi +(r8*4)] , xmm1
	add  r8 , 1 
	sub rcx , 1
	jmp .scalar_loop
fin :
	vzeroupper 
	ret 
