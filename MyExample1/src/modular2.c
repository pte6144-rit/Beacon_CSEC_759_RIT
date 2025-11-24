#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int operation(int x, int y) {
    if (x % y == 0) {
        printf("X is a multiple of Y\n");
	return 0;
    }
    int z = x%y;
    printf("X mod Y is %i\n", z);
    return z;
}


int main(int argc, char** argv) {
    if (argc != 3) {
        printf("Please provide 2 arguments\n");	
        return 5;
    }

    operation(atoi(argv[1]), atoi(argv[2]));

    return 0;
}
