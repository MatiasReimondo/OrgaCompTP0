#include "functions.h"
#include <ctype.h>
#include <string.h>


int stdin_file(char *fd){
    FILE *fp;
    char input_char;
    char word[MAX_LONG];
    int i = 0;

    fp = fopen(fd, "w");
    while ((input_char = getchar()) != EOF) {
        int is_valid = is_valid_char(input_char);
        if (is_valid) {
            word[i] = input_char;
            i++;
        } else {
            if (is_capicua(word, i) == 0) {
                print_word_in_file(fp,word, i);
            }
            if(input_char == '\n'){
                fprintf(fp,"\n");
            }
            word[0] = '\0';
            i = 0;
        }
    }
    fclose(fp);
    return 0;

}

int file_stdout(char *fd){
    FILE *fp;
    char input_char;
    char word[MAX_LONG];
    int i = 0;

    fp = fopen(fd, "r");
    while ((input_char = getc(fp)) != EOF) {
        int is_valid = is_valid_char(input_char);
        if (is_valid) {
            word[i] = input_char;
            i++;
        } else {
            if (is_capicua(word, i) == 0) {
                print_word(word, i);
            }
            if(input_char == '\n'){
                printf("\n");
            }
            word[0] = '\0';
            i = 0;
        }
    }
    fclose(fp);
    return 0;
}

int filein_fileout(char *fi, char *fo){
    FILE *fpr, *fpw;
    char input_char;
    char word[MAX_LONG];
    int i = 0;

    fpr = fopen(fi,"r");
    fpw = fopen(fo,"w");
    while ((input_char = getc(fpr)) != EOF) {
        int is_valid = is_valid_char(input_char);
        if (is_valid) {
            word[i] = input_char;
            i++;
        } else {
            if (is_capicua(word, i) == 0) {
                print_word_in_file(fpw,word, i);
            }
            if(input_char == '\n'){
                fprintf(fpw,"\n");
            }
            word[0] = '\0';
            i = 0;
        }
    }
    fclose(fpr);
    fclose(fpw);
    return 0;
}


int is_valid_char(char input_char){
    int is_valid = 0;
    for (int i = 0; i < sizeof(LEGAL_CHARS) ; ++i) {
        if(input_char == LEGAL_CHARS[i]){
            is_valid =1;
        }
    }
    return is_valid;
}

void print_word(char array[MAX_LONG], int size_word){
    for (int i = 0; i <size_word ; ++i) {
        printf("%c",array[i]);
    }
    printf("%c",' ');
}

void print_word_in_file(FILE *f,char array[MAX_LONG], int size_word){
    for (int i = 0; i <size_word ; ++i) {
        fprintf(f,"%c",array[i]);
    }
    fprintf(f,"%c",' ');
}

int is_capicua(char array[MAX_LONG], int size_word){
    int capicua = 0;
    int last_letter = size_word-1;
    for (int i = 0; i <size_word ; ++i) {
        if(toupper(array[i]) != toupper(array[last_letter-i])){
            capicua++;
        }
    }
    return capicua;
}



int no_arguments(){
    char input_char;
    char word[MAX_LONG];
    int i = 0;
    while ((input_char = getchar()) != EOF){
        int is_valid = is_valid_char(input_char);
        if(is_valid){
            word[i]=input_char;
            i++;
        }else{
            if(is_capicua(word,i) == 0){
                print_word(word,i);
            }
            word[0]='\0';
            i = 0;
        }
    }

    return 0;
}

int one_argument(int argc, char *argv[]){
    if (strcmp (argv[1], "-o") == 0) {
        stdin_file(argv[2]);
    }
    else if (strcmp (argv[1], "-i") == 0) {
        file_stdout(argv[2]);
    }
    else {
        printf("No existe el comando \n");
    }
    return 0;
}


int two_arguments(int argc, char *argv[]){
    if ((strcmp (argv[1], "-o") == 0) && (strcmp (argv[3], "-i") == 0)) {
        filein_fileout(argv[4],argv[2]);
    }
    else if ((strcmp (argv[3], "-o") == 0) && (strcmp (argv[1], "-i") == 0)) {
        filein_fileout(argv[2],argv[4]);
    }
    else {
        printf("No existe el comando \n");
    }
    return 0;
}

