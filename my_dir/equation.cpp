#include"equation.h"
using namespace std;



 void Upwind::  update(Variable &Un,Variable& Unp1,double a,Imesh* imesh){

    double x = (*imesh).X_min();
    double x_max =(*imesh).X_max();
    int i=1;
    Unp1[0]=Un[0]-a*(*imesh).Dt()/(*imesh).Dx()*Un[0];
    while ( x < x_max ){
            x=x+(*imesh).Dx();
            Unp1[i]=Un[i]-a*(*imesh).Dt()/(*imesh).Dx()*(Un[i]-Un[i-1]);
            i=i+1;
    }
 }

  void LaxWendroff::update(Variable &Un,Variable& Unp1,double a,Imesh* imesh){

    double x = (*imesh).X_min();
    double x_max = (*imesh).X_max();
    double dx = (*imesh).Dx();
    double dt = (*imesh).Dt();
    int i=1;
    Unp1[0]=Un[0]-a*dt/(2*dx)*Un[1]+a*a*dt*dt/(2*dx*dx)*(Un[1]-Un[0]);
    while ( x < x_max ){
            x=x+dx;
            Unp1[i]=Un[i]-a*dt/(2*dx)*(Un[i+1]-Un[i-1])+a*a*dt*dt/(2*dx*dx)*(Un[i+1]+Un[i-1]-2*Un[i]);
            i=i+1;
    }
    
 }


 void Equation::compute(double x_min,double x_max,double dx,Variable Un,Variable& Unp1){
    double x = x_min;
    int i=0;
    Unp1[0]=Un[0]-0.5*(Un[0]);
    while ( x < x_max ){
        cout<<"-- at x_i="<< x <<endl;
        x=x+dx;
          Unp1[i]=Un[i]-0.5*(Un[i]-Un[i-1]);
        i=i+1;
    }
 }


/*
void Equation::compute_initial_condition(Variable &Var,Imesh imesh,f ){

double mu=(imesh.X_max()-imesh.X_min())/2;
double sigma=10*imesh.Dx();

int n=imesh.x_size();
int i=0;
while(i<n){
    double x=imesh.x_i(i);
    
    Var[i]=exp(-((x-mu)*(x-mu))/(2*sigma*sigma))/(sigma*sqrt(8*atan(1)));
    i+=1;
    

}

}
*/
void Equation::compute_exact_solution(Variable& var,Imesh *imesh,float t){
  double x_min = (*imesh).X_min();
  double x_max = (*imesh).X_max();
  double dx = (*imesh).Dx();
  double dt = (*imesh).Dt();
  double mu=( x_max- x_min)/2;
  double sigma=10*dx; 
  double a= 0.5*dx/dt;
  int i=0;

   /*                      
  while ( x < x_max ){
   var[i]=exp(-((x-a*t-mu)*(x-a*t-mu))/(2*sigma*sigma))/(sigma*sqrt(8*atan(1)));
   x=x+dx;    
   i=i+1;}
*/

   std::for_each(var.vec.begin(),var.vec.end(),[x_min,dx,&i,a,t,mu,sigma](auto& vi ){
    double x=x_min+dx*i;
    vi=exp(-((x-a*t-mu)*(x-a*t-mu))/(2*sigma*sigma))/(sigma*sqrt(8*atan(1)));
    i++;
   });
    

}


