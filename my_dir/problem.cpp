#include"problem.h"
using namespace std;

void Problem::solve(){
    Timer loopTimer;
    cout<<"--- Solve problem ---"<<endl;
    
    double t_ini=(*ptr_imesh).T_ini();
    double t_final=(*ptr_imesh).T_final();
    double dt=(*ptr_imesh).Dt();
    double x_min=(*ptr_imesh).X_min();
    double x_max= (*ptr_imesh).X_max();
    double dx=(*ptr_imesh).Dx();

    Variable Un{ptr_imesh,"Un"};
    Variable Unp1{ptr_imesh,"Unp1"};
    Variable U_ref{ptr_imesh,"U_ref"};
    Variable U_np_2nd_order{ptr_imesh,"u_n_2nd_order"};
    Variable U_np1_2nd_order{ptr_imesh,"u_np1_2nd_order"};

    double t= t_ini;
    auto lambda1 = [](double x,double mu,double sigma) {return exp(-((x-mu)*(x-mu))/(2*sigma*sigma))/(sigma*sqrt(8*atan(1)));};
    equation.compute_initial_solution(Un, ptr_imesh,lambda1 );
    equation.compute_initial_solution( U_np_2nd_order, ptr_imesh,lambda1 );
    

    loopTimer.start();  
    while ( t <t_final ){
        cout<<"--- compute equation at time : "<< t <<"---"<<endl;
        equation.compute(x_min, x_max, dx, Un, Unp1);
        double a=0.5*(*ptr_imesh).Dx()/(*ptr_imesh).Dt();
        equation.compute_for_scheme<LaxWendroff>(U_np_2nd_order, U_np1_2nd_order,ptr_imesh);    
        U_np1_2nd_order.print(t);
        Unp1.print(t);
        U_np_2nd_order= U_np1_2nd_order;
        Un=Unp1;
        
        equation.compute_exact_solution(U_ref,ptr_imesh,t);
        U_ref.print(t);
        t=t+dt;
        
    }
    loopTimer.stop();
    cout<<"looptime is ";
    loopTimer.print();  
    
}

void Problem::solve_parallel(){
    Timer loopTimer;
    cout<<"--- Solve problem ---"<<endl;
    
    double t_ini=(*ptr_imesh).T_ini();
    double t_final=(*ptr_imesh).T_final();
    double dt=(*ptr_imesh).Dt();
    double x_min=(*ptr_imesh).X_min();
    double x_max= (*ptr_imesh).X_max();
    double dx=(*ptr_imesh).Dx();

    Variable Un{ptr_imesh,"Un"};
    Variable Unp1{ptr_imesh,"Unp1"};
    Variable U_ref{ptr_imesh,"U_ref"};
    Variable U_np_2nd_order{ptr_imesh,"u_n_2nd_order"};
    Variable U_np1_2nd_order{ptr_imesh,"u_np1_2nd_order"};

    //double t= t_ini;
    auto lambda1 = [](double x,double mu,double sigma) {return exp(-((x-mu)*(x-mu))/(2*sigma*sigma))/(sigma*sqrt(8*atan(1)));};
    equation.compute_initial_solution(Un, ptr_imesh,lambda1 );
    equation.compute_initial_solution( U_np_2nd_order, ptr_imesh,lambda1 );
    

    loopTimer.start();  
    thread first_thread([t_ini,t_final,this,x_min,x_max,dx,&Un,&Unp1,dt](){
        double t= t_ini;
        while ( t <t_final ){
        cout<<"--- compute equation at time : "<< t <<"---"<<endl;
        equation.compute(x_min, x_max, dx, Un, Unp1);       
        Unp1.print(t);
        Un=Unp1;
        t=t+dt;       
    }
    });

     thread second_thread([t_ini,t_final,this,&U_np_2nd_order,&U_np1_2nd_order,dt](){
        double t= t_ini;
        while ( t <t_final ){
         cout<<"--- compute equation at time : "<< t <<"---"<<endl;
        double a=0.5*(*ptr_imesh).Dx()/(*ptr_imesh).Dt();
        equation.compute_for_scheme<LaxWendroff>(U_np_2nd_order, U_np1_2nd_order,ptr_imesh);    
        U_np1_2nd_order.print(t);
        U_np_2nd_order= U_np1_2nd_order;
        t=t+dt;         
    }
    });
   
     thread third_thread([t_ini,t_final,this,&U_ref,dt](){
        double t= t_ini;
        while ( t <t_final ){
         cout<<"--- compute equation at time : "<< t <<"---"<<endl;     
        equation.compute_exact_solution(U_ref,ptr_imesh,t);
        U_ref.print(t);
        t=t+dt;         
    }
    });
    first_thread.join();
    second_thread.join();
    third_thread.join();
   

    loopTimer.stop();
    cout<<"looptime is ";
    loopTimer.print();  
    
}



