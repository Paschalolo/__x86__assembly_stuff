


SECTION .text 
	global ConvertFtoC 


ConvertFtoC  : 
	vmovss xmm1 , dword[f32_32po]
	vsubss xmm , xmm0 , xmm1 
	vmovss xmm1 , dword[f32_scaleFtoC]
	vmulss xmm0 , xmm2 , xmm1
	ret

ConvertCtoF : 
	vmulss xmm0 , xmm0 , dword[f32_to_scaletof]
	vaddss xmm0  ,xmm0 , [f32_po]
	ret
