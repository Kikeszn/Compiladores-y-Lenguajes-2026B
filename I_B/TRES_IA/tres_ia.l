%{
#include <stdio.h>

int num_lineas = 0;
int num_caracteres = 0;
%}

%%

\n          { num_lineas++; num_caracteres++; }
[^\n]+      { num_caracteres += yyleng; }

%%

int main(int argc, char **argv) {
    // Permite leer un archivo si se pasa por consola, o usar la entrada estándar
    if (argc > 1) {
        FILE *archivo = fopen(argv[1], "r");
        if (archivo) {
            yyin = archivo;
        } else {
            printf("No se pudo abrir el archivo.\n");
            return 1;
        }
    }

    yylex();

    printf("Número de líneas: %d\n", num_lineas);
    printf("Número de caracteres: %d\n", num_caracteres);
    
    return 0;
}

int yywrap() {
    return 1;
}
