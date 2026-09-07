

#include <cstdio>
#include <display.h>
extern "C"{
	unsigned int BitOpsUn32_a(unsigned a , unsigned b , unsigned c , unsigned d);
	unsigned int BitOpsUn32_cpp(unsigned a , unsigned b , unsigned c , unsigned d);
}

unsigned int BitOpsUn32_a(unsigned a , unsigned b , unsigned c , unsigned d){
	// calculate ((((a&b)|c ) ^ d )
	return (((a&b) | c )^ d ); 
}
int main(){

return 0;
}
