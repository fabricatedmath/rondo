#include <iostream>

using namespace std;

#include <MatrixMultiply.cuh>

int main() {
    cout << "dogs" << endl;
    float* d = NULL;
    MatrixMultiply mm;
    mm.call(d);
}