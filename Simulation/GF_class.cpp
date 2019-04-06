#include "GF_class.h"

static const int __MAX_ORDER_ = 163;
static const int __MAX_DIGIT_ = 64;

GF::GF( std::string c) {
	//char c[65] = c_string.toCharArray();
    int length = c.length();
    this->num = 0;
    this->carry = 0;
    for(int i = 0 ; i<length ; ++i ) {
        this->num = ((this->num) << 1) + (c[i]=='1');
    }
}

unsigned long long GF::get_num() {
    return this->num;
}

unsigned long long GF::get_carry() {
    return this->carry;
}

GF GF::operator + (const GF& B) {
    GF C("0");
    C.num = this->num ^ B.num;
    return C;
}

GF GF::operator * (const GF& B) {
    GF C("0");
    //unsigned long long FLAG;
    unsigned long long num_temp;
    unsigned long long carry_temp;
    for(int i=0 ; i < __MAX_DIGIT_ ; ++i ) {
        if((((B.num >> i) & 1) == 1)) {
            num_temp = ((this->num << i));
            carry_temp = (this->num >> (__MAX_DIGIT_ - i));
        }
        else {
            num_temp = 0;
            carry_temp = 0;
        }
        C.num = C.num ^ num_temp;
        C.carry = C.carry ^ carry_temp;
    }
    return C;
}

void GF::print() {
    std::string temp_data = "";
    unsigned long long temp_num = this->num;
    while(temp_num != 0) {
        if( (temp_num & 1) == 1 ) temp_data += "1";
        else temp_data += "0";
        temp_num = (temp_num >> 1);
    }
    std::reverse( temp_data.begin() , temp_data.end() );
    std::cout << temp_data << std::endl;
    //std::cout << this->num << std::endl;
}

void GF::print_c() {
    std::string temp_data = "";
    unsigned long long temp_num = this->carry;
    while(temp_num != 0) {
        if( (temp_num & 1) == 1 ) temp_data += "1";
        else temp_data += "0";
        temp_num = (temp_num >> 1);
    }
    std::reverse( temp_data.begin() , temp_data.end() );
    std::cout << temp_data <<'|';
}
