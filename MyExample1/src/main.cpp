#include <iostream>

int main(int argc, char** argv) {
	if (argc != 2) {
		std::cout << "Requires 2 arguments" << std::endl;
		return 5;
	}
	std::cout << argv[1] << std::endl;
	return 0;
}
