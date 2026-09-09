

pand_avx : 
	vmovdqa xmm0 , [rsi] 
	vpand xmm0 ,xmm0 , xmm0 
	vmovdqa , [rdi] , xmm0 
	vzeroupper 
	ret 
pxor_avx : 

	vmovdqa xmm0 , [rsi] 
	vpxor xmm0 , xmm0 , [rdx] 
	vmovdqa  [rdi] , xmm0 
	ret 
por_avx :
	vmovdqa xmm0 , [rsi] 
	vpor xmm0 , xmm0 , [rdx] 
	vmovdqa [rdi] , xmm0 
	ret 
	
