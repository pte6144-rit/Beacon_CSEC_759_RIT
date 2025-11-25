#include <iostream>
#include <fstream>
#include <string>

int main(int argc, char* argv[]) {
    if (argc != 2) {
        std::cerr << "Usage: " << argv[0] << " <source_file>\n";
        return 1;
    }

    std::string filename = argv[1];
    std::ifstream infile(filename);

    if (!infile.is_open()) {
        std::cerr << "Error: Could not open file " << filename << "\n";
        return 1;
    }

    std::string line;
    int linenum = 0;
    bool found = false;

    while (std::getline(infile, line)) {
        linenum++;

        // Look for exact comment marker
        if (line.find("//?BEACON") != std::string::npos) {
            std::cout << filename << ":" << linenum << std::endl;
            found = true;
        }
    }

    if (!found) {
        std::cout << "No '//?Beacon' comment found in " << filename << std::endl;
    }

    return 0;
}
