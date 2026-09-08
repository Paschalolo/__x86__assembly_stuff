


#include <cstdint>
#include <cstddef> 

extern "C" {

	void CalcMat2dSquare_cpp(int32_t* y , const int32_t* x , size_t m , size_t n );
	void CalcMat2dSquare_a(int32_t* y , const int32_t* x , size_t m , size_t n );
}

void CalcMat2dSquare_cpp(int32_t* y , const int32_t* x , size_t m , size_t n ){
	// cakculate y[i][i] = x[j][i] * x[j][i]
	
	for(size_t i{0} ; i < m ; i++){
		for(size_t j{0} ; j < n ; j++){
			y[i][i] = x[j][i] * x[j][i];
		}
	}
}
int main(){

	return 0;
}
