

MaskOpsi64a_avx_512: 
	
	vmovdqa64 zmm0 , [rsi] 
	vmovdqa64 zmm1 , [rdx] 

	kmovb k1 , ecx 

	vpaddq zmm2{k1}{z} , zmm0 , zmm1 
	vmovdqa64 [rdi] , zmm2 

	vpsubq zmm2{k1}{z} , zmm0 , zmm1 
	vmovdqa64 [rdi+64] , zmm2 

	vpsllvq zmm2{k1}{z} , zmm0 , zmm1 
	vmovdqa64 [rdi+128] , zmm2 

	vzeroupper 
	ret 
maskOp64Iq: 
	vmovdqa64 zmm0 , [rsi] 
	vpbroadcastq zmm1 , rdx 
	vpbroadcastq zmm2 , rcx 

	vpcmpq k1 , zmm0 , zmm1 , CMP_GE
	vpaddq zmm0{k1} , zmm0 , zmm2 
	vmovdqa64 [rdi] , zmm0 

	vzeroupper 
	ret
