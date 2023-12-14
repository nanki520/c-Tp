#include"equation.h"

class Problem{
    Equation equation;
    Imesh* ptr_imesh=nullptr;
 

    public:
    Problem (UniformMesh *uni){ptr_imesh=uni;}
    Problem (NONUniformMesh *uni){ptr_imesh=uni;}
    void solve();
    void solve_parallel();

};



