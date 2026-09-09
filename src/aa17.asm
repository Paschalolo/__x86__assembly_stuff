

; void CalcLeastSquares_cpp(double* m, double* b, const double* x,
     ; const double* y, size_t n, double epsilon)
     ; m = rdi , b = rsi , x = rdx , y =rcx , n = r8 xmm0 =eplsion 
     ; This is a basic version not highly optimized for mechanical sympathy 

CalcleastSquare: 
	test r8 ,r8 
	jz fin 
	; do checks here 

	; ----------------------------after checks ---------------------------------- ; 
	; sum_x xmm1 , sum_y = xmm2 , sum_xx xmm3 , sum_xy xmm4 
	xor rax , rax ; set up scasled counter 
	vpxor ymm1 , ymm1 
	vpxor ymm2 , ymm2 
	vpxor ymm3 , ymm3
	vpxor ymm4 , ymm4 


.Loop_main: 
	cmp r8 , 4 
	jl scalar 
	; fetch the values
	vmovapd ymm5 , [rdx + (rax*8)] 
	vmovapd ymm6 , [rcx + (rax*8)]
	vaddpd ymm1 , ymm5 
	vaddpd ymm2 , ymm6 
	vmulpd ymm3 , ymm5 , ymm5 
	vmulpd ymm4 , ymm5 , ymm6 
	add rax , 4 
	sub r8 , 4
	jmp .Loop
	; Break it down into a scallar loop for ymm1 , ymm2 , ymm3 , ymm4
	vhaddpd ymm1 , ymm1 , ymm1 
	vhaddpd ymm1 , ymm1 , ymm1
	vpshra
	vhaddpd 
scalar_main : 
	

fin: 
	vzeroupper 
	ret 
