#include <algorithm>
#include <cstdio>
#include <iostream>
using namespace std;

void MUL( long long m[] , long long n[] , long long R[] ) {
    long long * p = new long long [5];
    long long * q = new long long [5];
    long long * r = new long long [5];
    const int INF = 2;
    
    ////////////////////////////////////
    p = p + 2;
    long long p_temp = m[0] + m[2];
    p[0] = m[0];
    p[1] = p_temp + m[1];
    p[-1]= p_temp - m[1];
    p[-2]= (p[-1] + m[2]) * 2 - m[0];
    p[INF]= m[2];
    ////////////////////////////////////
    q = q + 2;
    long long q_temp = n[0] + n[2];
    q[0] = n[0];
    q[1] = q_temp + n[1];
    q[-1]= q_temp - n[1];
    q[-2]= (q[-1] + n[2]) * 2 - n[0];
    q[INF]= n[2];
    ////////////////////////////////////
    r = r + 2;
    r[0] = p[0] * q[0];
    r[1] = p[1] * q[1];
    r[-1]= p[-1]* q[-1];
    r[-2]= p[-2]* q[-2];
    r[INF] = p[INF] * q[INF];
    ////////////////////////////////////
    //long long R[5];
    R[0] = r[0];
    R[4] = r[INF];
    R[3] = (r[-2] - r[1])/3;
    R[1] = (r[1]- r[-1])/2;
    R[2] = r[-1] - R[0];
    R[3] = (R[2]-R[3])/2 + 2*r[INF];
    R[2] = R[2] + R[1] - R[4];
    R[1] = R[1] - R[3];
    ////////////////////////////////////
    //return r;
}

const int WIDTH_PER_WORD = 100000000; 
void output(long long num[] , int n) {
    //long long num_temp;
    for(int i=0 ; i < n-1 ; ++i) {
		num[i+1] +=  (num[i]/ WIDTH_PER_WORD);
		num[i] = num[i] %  WIDTH_PER_WORD;
	}
	
    for( --n ; n >= 0 ; --n) {
        cout << num[n];
    }
    cout << endl;
}

int main() {

    long long A[3] = {56789012,78901234,123456};
    long long B[3] = {54321098,43219876,98765};
    long long C[5];
    MUL(A,B,C);
    output(A,3);
    output(B,3);
    output(C,5);
    return 0;
}
