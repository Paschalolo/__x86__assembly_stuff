


;extern "C" void MulI16_avx(XmmVal c[2], const XmmVal* a, const XmmVal* b);
;extern "C" void MulI32a_avx(XmmVal* c, const XmmVal* a, const XmmVal* b);
;extern "C" void MulI32b_avx(XmmVal c[2], const XmmVal* a, const XmmVal* b);


SECTION .text 
	global MUL16I_avx
	global MUL32I_avx
	global MUL32bI_avx

Mul16I_avx : 
	vmovdqa xmm0 , [rsi] 
	vmovdqa xmm1 , [rdx] 

	vpmullw xmm2 , xmm0 , xmm1 
	vpmulhw xmm3 , xmm0 , xmm1 

	vpunpckhwd xmm4 , xmm2 , xmm3
	vpunpcklwd xmm5 , xmm3, xmm2 
	vmovdqa [rdi]  , xmm5
	vmovdqa [rdi + 16]  , xmm5
	vzeroupper 
	ret 
