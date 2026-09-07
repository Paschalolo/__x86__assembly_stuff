

#ifndef DISPLAY_H 
#define DISPLAY_H 
#include <cstdio>
void DisplayResult(unsigned int a , unsigned int b , unsigned int c , unsigned int d ,unsigned int r1 ,unsigned int r2 ){
	std::printf("-----results for the test\na=0x%4x\nb=0x%4x\nc=0x%4x\nd=0x%4x\nr1=0x%4x\nr2=0x%4x\n" , a, b, c, d, r1, r2);

}

#endif 
