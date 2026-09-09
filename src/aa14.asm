

SECTION .text 
	global PackedMathsF32_avx

PackedMathsF32_avx: 
	vmovaps ymm0 , [rsi] 
	vmovaps ymm1 , [rdx] 


	vaddps ymm2 , ymm0 , ymm1 
	vmovaps [rdi] , ymm2 

	vsubps ymm2 , ymm0 , ymm1 
	vmovaps [rdi + 32 ] , ymm2 

	vmulps ymm2 , ymm0 , ymm1 
	vmovaps [rdi + 64] , ymm2 

	vdivps ymm2 , ymm0 , ymm1 
	vmovaps [rdi + 96] , ymm2 

	vminps ymm2 , ymm0 , ymm1 
	vmovaps [rdi + 128 ] , ymm2

	vmaxps ymm2 , ymm0 , ymm1 
	vmovaps [rdi+ 160 ] , ymm2 

	vsqrtps ymm2 , ymm0 , ymm1 
	vmovaps [rdi + 192 ]  , ymm2 

	vbroadcastss ymm3 , [F32_Absmask]
	vmovaps [rdi + 224] , ymm2 

	vzeroupper 
	ret 
