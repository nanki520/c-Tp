
#include"problem.h"
#include <map>

int main(int argc, char** argv){
    Timer totalTimer;
   
    totalTimer.start();
    double argv1=std::stod(argv[1]);
    double argv2=std::stod(argv[2]);
    double argv3=std::stod(argv[3]);
    double argv4=std::stod(argv[4]);
    double argv5=std::stod(argv[5]);
    double argv6=std::stod(argv[6]);
   
    
    
    enum class tp{UniformMesh,NONUniformMesh};
    std::map<std::string,tp> mymap{{"uniform",tp::UniformMesh},{"nonuniform",tp::NONUniformMesh}};
    
   
  
    switch(mymap[argv[7]]){
        case tp::UniformMesh:{
            UniformMesh uni{argv1,argv2,argv3,argv4,argv5,argv6};
            Problem prob{&uni};
            prob.solve();
            break;
        }
        case tp::NONUniformMesh:{
            NONUniformMesh nonuni{argv1,argv2,argv3,argv4,argv5,argv6};
            Problem probnon{&nonuni};
            probnon.solve();
            break;
        }
    }
    totalTimer.stop();
    cout<<"totaltime is ";
    totalTimer.print();
    
    return 0;
    

}
