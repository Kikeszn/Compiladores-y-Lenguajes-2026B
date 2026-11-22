%{
#include <stdlib.h>
#include <stdio.h>
%}

%%
[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}   printf("CORREO VALIDO: %s\n", yytext);
[ \t\n]+                                       ;
[^ \t\n]+                                      printf("TOKEN NO VALIDO: %s\n", yytext);
%%

int main() {
    yylex();
    return 0;
}
