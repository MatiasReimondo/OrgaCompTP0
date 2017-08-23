#include <stdio.h>
#include "functions.h"

#define TWO_ARGS 5
#define ONE_ARG 3
#define NO_ARGS 1

int main(int argc, char *argv[]) {

    if(argc == NO_ARGS){
        no_arguments();
    }
    else if(argc == ONE_ARG){
        one_argument(argc,argv);

    }
    else if(argc == TWO_ARGS){
        two_arguments(argc,argv);
    }
    else {
        printf("Comandos Incorrectos");
    }
    return 0;
}


