#include"imesh.h"
using namespace std;
class Variable{
    std::string m_name;
    
public:
    vector<double> vec;
    double  &operator[] (int i ){return vec[i];}
    Imesh *ptr_imesh=nullptr;

    Variable(Imesh *i,std::string str){
        ptr_imesh = i; //error
        int n=(*i).x_size();
        vec.resize(n,0);
        m_name= str;
    }
    void print(double t);
};
