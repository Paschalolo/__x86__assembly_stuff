


SECTION .text 

%macro PixelCmp_M 1 
	align 16 
%%L1 : 
	add rax , NSE 
	vmovdqa64  zmm2 , [rsi + rax] 
	vpcmpub k1 , zmm2 , zmm1 , %1 
	vmovdqu8 zmm3{k1}{z} , zmm0
	vmovdqa64 [rdi + rax] , zmm3 
	sub rdx , NSE 
	jnz %%L1
	jmp Done 
%endmacro 


ComparePixels_avx512: 




	mov eax , 1 
Done 
