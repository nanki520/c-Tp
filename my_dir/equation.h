#include"variable.h"
using namespace std;

class Upwind{
    public:
    static void update(Variable &Un,Variable& Unp1,double a,Imesh *imesh);
};

class LaxWendroff{
    public:
    static void update(Variable &Un,Variable& Unp1,double a,Imesh *imesh);
};

class Equation{
    public:
     void compute(double x_min,double x_max,double dx,Variable Un,Variable& Unp1);
    template<typename T>
     void compute_initial_solution(Variable &Var,Imesh* imesh,T f );
    template<typename T>
     void compute_for_scheme(Variable &Un,Variable& Unp1,Imesh* imesh);   
     void compute_exact_solution(Variable& var,Imesh* imesh,float t);
};


template<typename T>

void Equation::compute_initial_solution(Variable &Var,Imesh* imesh,T f ){
double x_max=(*imesh).X_max();
double x_min=(*imesh).X_min();
double dx=(*imesh).Dx();
int n=(*imesh).x_size();

double mu=(x_max-x_min)/2;
double sigma=10*dx;

int i=0;

/*while(i<n){
    double x=(*imesh).x_i(i);
    Var[i]=f(x,mu,sigma);
    i+=1;
}*/

std::for_each(Var.vec.begin(),Var.vec.end(),[mu,sigma,&i,f,imesh](auto& vi ){
    double x=(*imesh).x_i(i);
    vi=f(x,mu,sigma);
    i+=1;
    
 
   });

}

template<typename T>

void Equation::compute_for_scheme(Variable &Un,Variable& Unp1,Imesh* imesh){
    double a=0.5*(*imesh).Dx()/(*imesh).Dt();
    T:: update(Un,Unp1,a,imesh);
}