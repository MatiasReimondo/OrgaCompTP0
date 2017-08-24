#ifndef UNTITLED_FUNCTIONS_H
#define UNTITLED_FUNCTIONS_H


#include <stdio.h>

#define MAX_LONG 1024

//lista de caracteres legales o permitidos por el enunciado
static const char LEGAL_CHARS[] = "QWERTYUIOPASDFGHJKLZXCVBNMqwertyuiopasdfghjklzxcvbnm1234567890-_";

static const char OPTIONS[] = "Vhio";


//Lee de la entrada estandar y escribe las capicuas en un archivo
int stdin_file(char *fd);

//Chequea que un caracter este dentro de los caracteres permitidos
int is_valid_char(char input_char);

//Imprime la palabra en la salida estandar
void print_word(char array[MAX_LONG], int size_word, int words_printed);

//Imprime en el archivo de salida
void print_word_in_file(FILE *f,char array[MAX_LONG], int size_word, int words_printed);

// Devuelve 0 si es capicua o algun numero mayor a 0 si no lo es
int is_capicua(char array[MAX_LONG], int size_word);

//Comportamiento si el programa se ejecuta sin argumentos leee y escribe entrada y salida estandar
int no_arguments();

//COmportamiento con un argumento ya sea entrada o salida
int one_argument(int argc, char *argv[]);

// Comportamiento con dos argumentos entrada y salida en cualquier orden
int two_arguments(int argc, char *argv[]);

//Lee de un archivo y escribe en la salida estandar
int file_stdout(char *fd);

// Lee de un archivo y escribe en otro archivo
int filein_fileout(char *fi, char *fo);

int versionDisplay();

int helpDisplay();

int version_option(int argc, char*argv[]);


#endif //UNTITLED_FUNCTIONS_H
