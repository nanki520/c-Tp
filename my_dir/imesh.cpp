#include"imesh.h"
using namespace std;

double Imesh::x_i(int i){
    return X_min()+i*Dx();
}