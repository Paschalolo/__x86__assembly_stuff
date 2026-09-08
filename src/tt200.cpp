#include <cstdio>

struct hp {                                                                                                                    
    unsigned char b1;                                                                                                     
    double kk;                                                                                                             
};                                                                                                                             

int main() {                                                                                                                    
    hp bb{0x10, 688.43f};                                                                                                 
                                                                                                                               
    std::printf("start : %p , char %p : double %p\n", 
                reinterpret_cast<void*>(&bb), 
                reinterpret_cast<void*>(&bb.b1), 
                reinterpret_cast<void*>(&bb.kk));                                                                                                 
}

