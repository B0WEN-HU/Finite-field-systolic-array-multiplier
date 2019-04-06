
#ifndef __GF_
#define __GF_
#include <cstring>
#include <cstdlib>
#include <algorithm>
#include <iostream>


class GF {

private:
    unsigned long long carry;
    unsigned long long num;
public:

    GF (std::string c_string);
    GF() {};
    unsigned long long get_num();
    unsigned long long get_carry();
    GF operator + (const GF& B);
    GF operator * (const GF& B);
    void print();
    void print_c();
};

#endif
