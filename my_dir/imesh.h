#include"timer.h"
#include<cmath>
#include <fstream>
#include <algorithm>
class Imesh{
    public:
    virtual double T_ini()  {return -1;} 
    virtual double T_final()  {return -1; } 
    virtual double Dt() {return -1;} 
    virtual double X_min()  {return -1;} 
    virtual double X_max()  {return -1;} 
    virtual double Dx()  {return -1;} 
    int x_size(){return (X_max()-X_min())/Dx()+1;}
    double x_i(int i);
    virtual~ Imesh()=default;
};

class UniformMesh : public Imesh{
    double t_ini= 0;
    double t_final= 1;
    double dt= 0.5;
    double x_min= 0;
    double x_max= 5;
    double dx= 2;
    public:
    UniformMesh(double tini,double tfinal,double dtt,double xmin,double xmax,double dxx){
        t_ini =tini ;
        t_final =tfinal;
        dt =dtt;
        x_min =xmin;
        x_max=xmax;
        dx=dxx ;
    }
    UniformMesh()=default;
    double T_ini() override {return t_ini;} 
    double T_final() override {return t_final; } 
    double Dt ()override {return dt;} 
    double X_min() override {return x_min;} 
    double X_max() override {return x_max;} 
    double Dx() override {return dx;} 
};

class NONUniformMesh : public Imesh{
    double t_ini= 0;
    double t_final= 1;
    
    double dt= 0.5;
    double x_min= 0;
    double x_max= 5;
    double dx= 2;
    public:
    NONUniformMesh(double tini,double tfinal,double dtt,double xmin,double xmax,double dxx){
        t_ini =tini ;
        t_final =tfinal;
        dt =dtt;
        x_min =xmin;
        x_max=xmax;
        dx=dxx ;
    }
    NONUniformMesh()=default;
    double T_ini() override {return t_ini;} 
    double T_final() override {return t_final; } 
    double Dt ()override {return dt;} 
    double X_min() override {return x_min;} 
    double X_max() override {return x_max;} 
    double Dx() override {return dx;} 
};
