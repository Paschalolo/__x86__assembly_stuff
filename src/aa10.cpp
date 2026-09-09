
#include <cstddef>
void calcz_app(float* z , const float* x , const float* y , size_t n ){

	for(auto i{0uz} ; i < n ; i++){
		z[i] = x[i] + y[i];
	}
}
