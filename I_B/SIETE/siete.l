%option noyywrap

%{
#include <stdio.h>
%}

%%
"if"|"else"|"while"|"int"  { printf("PALABRA_RESERVADA\t%s\n", yytext); }
[a-zA-Z_][a-zA-Z0-9_]*    { printf("IDENTIFICADOR\t\t%s\n", yytext); }
[0-9]+                   { printf("ENTERO\t\t\t%s\n", yytext); }
[ \t\r\n\f\v]+           { /* Ignorar espacios en blanco. */ }
.                        { printf("NO_RECONOCIDO\t\t%s\n", yytext); }
%%

int main(void)
{
    yylex();
    return 0;
}
