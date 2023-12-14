#include"variable.h"
using namespace std;

void Variable::print(double t ){
    std::ofstream outfile("../my_dir/data/Variable_" + m_name + std::to_string(t) + ".data");
    if (outfile.is_open()){
        cout<<m_name<<endl;
        int n=(*ptr_imesh).x_size();
      /*for(int i=0;i<n;i++){
            cout<<vec[i]<<endl;
            outfile << vec[i]<<endl;           
        }*/ 
        std::for_each(vec.begin(),vec.end(),[&outfile](auto& vi ){
            cout<<vi<<endl;
            outfile << vi<<endl;
            });
        outfile.close();
    }
    else{
        std::cerr << "Unable to open file for writing." << std::endl;
    }
}