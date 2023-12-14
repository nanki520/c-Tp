#include <iostream>
#include <thread>
#include <chrono>
using namespace std;

class Timer {
private:
    chrono::time_point<chrono::high_resolution_clock> start_time;
    chrono::time_point<chrono::high_resolution_clock> stop_time;

public:
    void start() {
        start_time = chrono::high_resolution_clock::now();
    }

    void stop() {
        stop_time = chrono::high_resolution_clock::now();
    }

    void print() {
        auto duration = chrono::duration_cast<chrono::milliseconds>(stop_time - start_time);
        cout <<  "time : " << duration.count() << "ms" << endl;
    }


};


