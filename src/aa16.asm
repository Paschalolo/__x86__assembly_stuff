
;extern "C" void ZeroExtU8_U16_avx2(YmmVal* c, const YmmVal* a);
;extern "C" void ZeroExtU8_U32_avx2(YmmVal* c, const YmmVal* a);
;extern "C" void SignExtI16_I32_avx2(YmmVal* c, const YmmVal* a);
;extern "C" void SignExtI16_I64_avx2(YmmVal* c, const YmmVal* a);


ZeroExtU8_U16_avx2: 
	vpmovzxbw ymm0 , [rsi]
	vmovdqa [rdi] , ymm0
	ret

ZeroExtU8_U32_avx2:
	vpmovzxbd ymm0 , [rsi] 
	vmovdqa [rdi] , ymm0
	ret 
SignExtI16_I32_avx2:
	vpmovsxwd ymm0 , [rsi] 
	vmovdqa [rdi] , ymm0 
	ret 
SignExtI16_I64_avx2:
	vpmovsxwq ymm0 , [rsi] 
	vmovdqa [rdi] , ymm0 
	ret 
