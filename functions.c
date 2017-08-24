#include "functions.h"
#include <ctype.h>
#include <string.h>
#include <getopt.h>


int stdin_file(char *fd){
    FILE *fp;
    char input_char;
    char word[MAX_LONG];
    int i = 0;
    int words_printed = 0;

    fp = fopen(fd, "w");
    while ((input_char = getchar()) != EOF) {
        int is_valid = is_valid_char(input_char);
        if (is_valid) {
            word[i] = input_char;
            i++;
        } else {
            if (is_capicua(word, i) == 0) {
                print_word_in_file(fp,word,i,words_printed);
                words_printed++;
            }
            if(input_char == '\n'){
                fprintf(fp,"\n");
                words_printed= 0;
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
    int words_printed = 0;

    fp = fopen(fd, "r");
    while ((input_char = getc(fp)) != EOF) {
        int is_valid = is_valid_char(input_char);
        if (is_valid) {
            word[i] = input_char;
            i++;
        } else {
            if (is_capicua(word, i) == 0) {
                print_word(word, i,words_printed);
                words_printed++;
            }
            if(input_char == '\n'){
                printf("\n");
                words_printed = 0;
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
    int words_printed = 0;

    fpr = fopen(fi,"r");
    fpw = fopen(fo,"w");
    while ((input_char = getc(fpr)) != EOF) {
        int is_valid = is_valid_char(input_char);
        if (is_valid) {
            word[i] = input_char;
            i++;
        } else {
            if (is_capicua(word, i) == 0) {
                print_word_in_file(fpw,word, i,words_printed);
                words_printed++;
            }
            if(input_char == '\n'){
                fprintf(fpw,"\n");
                words_printed = 0;
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
    int i;
    for (i = 0; i < sizeof(LEGAL_CHARS) ; ++i) {
        if(input_char == LEGAL_CHARS[i]){
            is_valid =1;
        }
    }
    return is_valid;
}

void print_word(char array[MAX_LONG], int size_word, int words_printed){
    int i;
    if((words_printed>0)){
        printf(" ");
    }
    for (i = 0; i <size_word ; ++i) {
        printf("%c",array[i]);
    }
}

void print_word_in_file(FILE *f,char array[MAX_LONG], int size_word, int words_printed){
    int i;
    if((words_printed>0)){
        fprintf(f," ");
    }
    for (i = 0; i <size_word ; ++i) {
        fprintf(f,"%c",array[i]);
    }
}

int is_capicua(char array[MAX_LONG], int size_word){
    int capicua = 0;
    int last_letter = size_word-1;
    int i;
    if(array[0]== '\0'){
        capicua++;
    }
    for (i = 0; i <size_word ; ++i) {
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
    int words_printed = 0;
    while ((input_char = getchar()) != EOF){
        int is_valid = is_valid_char(input_char);
        if(is_valid){
            word[i]=input_char;
            i++;
        }else{
            if(is_capicua(word,i) == 0){
                print_word(word,i,words_printed);
                words_printed++;
            }
            if(input_char == '\n'){
                printf("\n");
                words_printed = 0;
            }
            word[0]='\0';
            i = 0;
        }
    }
    return 0;
}

int one_argument(int argc, char *argv[]){
    int opt;
    opt = getopt(argc,argv,OPTIONS);
    while(opt != -1){
        switch(opt){
            case 'V':
                versionDisplay();
                break;
            case 'h':
                helpDisplay();
                break;
            case 'o':
                stdin_file(argv[2]);
                break;
            case 'i':
                file_stdout(argv[2]);
                break;
            default:
                printf("No existe el comando \n");
                break;
        }
        opt = getopt(argc,argv,OPTIONS);
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

int versionDisplay(){
    printf("TP0 - Version 1.0 FIUBA 2017\n");
    printf("Alumnos:\n");
    printf("Charytoniuk, Martin 96354\n");
    printf("Perez, Martin  97378 \n");
    printf("Reimondo, Matias 95899\n");
    printf("\n");
    return 0;
}

int helpDisplay(){
    printf("Usage:\n"
            "tp0 -h\n"
            "tp0 -V\n"
            "tp0 [options]\n"
            "Options:\n"
            "-V, --version Print version and quit.\n"
            "-h, --help    Print this information.\n"
            "-i, --input   Location of the input file.\n"
            "-o, --output  Location of the output file.\n"
            "Examples:\n"
            "tp0 -i ~/input -o ~/output\n");
    printf("\n");
    return 0;
}

int version_option(int argc, char*argv[]){
    int opt;
    opt = getopt(argc,argv,OPTIONS);
    while(opt != -1){
        switch(opt){
            case 'V':
                versionDisplay();
                break;
            case 'h':
                helpDisplay();
                break;
            default:
                printf("No existe el comando \n");
                break;
        }
        opt = getopt(argc,argv,OPTIONS);
    }
    return 0;
}

