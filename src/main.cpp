#include<iostream>
#include"functions.hpp"

int main(){
	int a = 0;
	std::cout << "give me a number" << std::endl;
	std::cin >> a;
	std::cout << add_five(add_three(a)) << std::endl;
	return 0;
} 
