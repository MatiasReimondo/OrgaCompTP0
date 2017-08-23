#ifndef UNTITLED_FUNCTIONS_H
#define UNTITLED_FUNCTIONS_H


#include <stdio.h>

#define MAX_LONG 1024

static const char LEGAL_CHARS[] = "QWERTYUIOPASDFGHJKLZXCVBNMqwertyuiopasdfghjklzxcvbnm1234567890-_";

int stdin_file(char *fd);

int is_valid_char(char input_char);

void print_word(char array[MAX_LONG], int size_word);

void print_word_in_file(FILE *f,char array[MAX_LONG], int size_word);

int is_capicua(char array[MAX_LONG], int size_word);

int no_arguments();

int one_argument(int argc, char *argv[]);

int two_arguments(int argc, char *argv[]);

int file_stdout(char *fd);

int filein_fileout(char *fi, char *fo);


#endif //UNTITLED_FUNCTIONS_H
