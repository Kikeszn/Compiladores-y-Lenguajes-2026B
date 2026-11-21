%option noyywrap

%{
#include <stdio.h>

unsigned long mayusculas = 0;
unsigned long minusculas = 0;
unsigned long digitos = 0;
unsigned long blancos = 0;
%}

%%
[A-Z]           { mayusculas++; }
[a-z]           { minusculas++; }
[0-9]           { digitos++; }
[ \t\r\n\f\v]   { blancos++; }
.               { /* Ignorar otros caracteres. */ }
%%

int main(void)
{
    yylex();

    printf("Letras mayusculas: %lu\n", mayusculas);
    printf("Letras minusculas: %lu\n", minusculas);
    printf("Digitos: %lu\n", digitos);
    printf("Espacios en blanco: %lu\n", blancos);

    return 0;
}
