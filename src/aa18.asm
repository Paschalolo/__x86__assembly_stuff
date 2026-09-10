
SECTION .text 
global MathI16_avx512 
MathI16_avx512 : 
	vmovdqa64 zmm0 , [rdx] ;Load a 
	vmovdqa64 zmm1 , [rsi] ;Load b

	vpaddw zmm2 , zmm0 , zmm1 
	vmovdqa64 [rdi] , zmm2 

	; add satured 
	vpaddsw zmm2 , zmm0 , zmm1 
	vmovdqa64 [rdi+64] , zmm2 

	vpsubw zmm2 , zmm1 , zmm0 
	vmovdqa64 [rdi+128] , zmm2 

	vpsubsw zmm2 , zmm0 , zmm1 
	vmovdqa64 [rdi+ 192 ] , zmm2 

	vpminsw zmm2 , zmm1 , zmm0 
	vmovdqa64 [rdi + 256] , zmm2 

	vzeroupper 
	ret 
