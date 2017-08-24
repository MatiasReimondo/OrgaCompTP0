#include <stdio.h>
#include "functions.h"

#define TWO_ARGS 5 //numero de argumentos -i -o
#define ONE_ARG 3 // numero de argumentos -i/-o
#define HELP_VERSION 2
#define NO_ARGS 1 // Sin argumentos

//Bloque main, lo unico qu hace es redirigir al respectivo comportamiento
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
    else if(argc == HELP_VERSION){
        version_option(argc,argv);
    }
    else {
        printf("Comandos Incorrectos");
    }
    return 0;
}


