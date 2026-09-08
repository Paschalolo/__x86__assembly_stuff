

SECTION .data 
	PI : dq 3.172

SECTION .text 


Volume_A : 
	mov rax ,  3
	vmovd xmm2  , rax
	vmulsd xmm0 , xmm0 , xmm0 
	vmulsd xmm1 , xmm1 , qword[PI]
	vmulsd xmm0 , xmm1 , xmm0 
	vdivsd xmm0 , xmm0 , xmm2
	ret

; raduis - xmm0 , height xmm1 
Area_A : 
	vmovq xmm2 , xmm0
	vmulsd xmm0 , xmm0 , xmm0 
	vmulsd xmm1 , xmm1 , xmm1
	vaddsd xmm0 , xmm1 , xmm0 
	vmulsd xmm1 , xmm2 , qword[PI]
	vaddsd xmm0 , xmm0 , xmm2 
	vmulsd xmm0 , xmm0 , xmm1 
	ret 

