
#include <cstdint>
#include <cstdio>
extern "C" {
	int32_t SumvalsI32_a (int32_t a , int32_t b , int32_t c , int32_t d , int32_t e , int32_t f , int32_t g, int32_t h);
	
}


int main(){
	auto sum {0} ; 
	int a = 9 , b=900, c = 100 , d = 323, e= 9923 , f= -123 , g= 2324, h = 283;
	sum = a+b+c+d+e+f+g+h;
	std::printf("sum is %d for regular \n" ,  sum );
	std::printf("sum is %d for assembly functions \n" , SumvalsI32_a(a,b,c,d,e,f,g,h));
	return 0;
}

