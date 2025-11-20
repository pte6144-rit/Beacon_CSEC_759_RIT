#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main(int argc, char** argv) {
    if (argc < 3 || argc > 4 ) {
        printf("Please provide 2 or 3 arguments");	
        return 5;
    }
    if (argc % 2) {
        printf("MODFAIL");
	return 18;
    }
    char* base_string = argv[1];
    unsigned int base_length = strlen(base_string);
    unsigned int multiplier = atoi(argv[2]);
    if (argc == 4) {
        multiplier /= (atoi(argv[3]) + 1);
    }
    if (multiplier > 100) {
        multiplier = 100;
    }
    char* result_string = malloc(base_length * multiplier + 1);
    for (unsigned int i = 0; i < multiplier; i++) {
        for (unsigned int j = 0; j < base_length; j++) {
            result_string[i*base_length+j] = base_string[j];
        }
    }
    result_string[multiplier*base_length] = 0;

    printf("%s", result_string);

    free(result_string);

    return 0;
}
