

SECTION .text 
	
	global Add16I_avx 
	global SubI16_avx
; extern "C" void AddI16_avx(XmmVal* c1, XmmVal* c2, const XmmVal* a,
    ; const XmmVal* b);
; extern "C" void SubI16_avx(XmmVal* c1, XmmVal* c2, const XmmVal* a,
    ; const XmmVal* b);
    ; This will be reflecting add and subrtraction for saturated and wrap around 
Add16I_avx :
	vmovdqa xmm0 , [rdx]
	vmovdqa xmm1 , [rcx]
	vpaddw xmm2 , xmm0 , xmm1 
	vpaddsw xmm3 , xmm0 ,xmm1  
	vmovdqa [rdi] , xmm2 
	vmovdqa  [rsi] , xmm3
	vzeroupper 
	ret 
SubI16_avx :
	vmovdqa xmm0 , [rdx] 
	vmovdqa xmm1 , [rcx] 
	vpsubw  xmm2 , xmm0 , xmm1 
	vpsubsw xmm3 , xmm0 , xmm1 
	vmovdqa [rdi] , xmm2
	vmovdqa [rsi] , xmm3 
	vzeroupper 
	ret 

