

#include <cstdio>
#include <display.h>
extern "C"{
	unsigned int BitOpsUn32_a(unsigned a , unsigned b , unsigned c , unsigned d);
	unsigned int BitOpsUn32_cpp(unsigned a , unsigned b , unsigned c , unsigned d);
}

unsigned int BitOpsUn32_a(unsigned a , unsigned b , unsigned c , unsigned d){
	// calculate ((((a&b)|c ) ^ d )
	return ~(((a&b) | c )^ d ); 
}
int main(){
	
	unsigned int a = 0xffffffffU; 
	unsigned int b = 0x12345678U ; 
	unsigned int c = 0x87654321U ; 
	unsigned int d = 0x55555555U ; 
	auto r1 {BitOpsUn32_a(a, b, c, d)};
	auto r2 {BitOpsUn32_cpp(a, b, c, d)};

	DisplayResult(a, b, c, d, r1, r2);
return 0;
}
