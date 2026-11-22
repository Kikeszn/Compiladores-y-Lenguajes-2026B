%option noyywrap

%{
#include <stdio.h>
%}

%%
"+"     { printf("ARITMETICO - Suma: %s\n", yytext); }
"-"     { printf("ARITMETICO - Resta: %s\n", yytext); }
"*"     { printf("ARITMETICO - Multiplicacion: %s\n", yytext); }
"/"     { printf("ARITMETICO - Division: %s\n", yytext); }

"<="    { printf("RELACIONAL - Menor o igual: %s\n", yytext); }
">="    { printf("RELACIONAL - Mayor o igual: %s\n", yytext); }
"=="    { printf("RELACIONAL - Igualdad: %s\n", yytext); }
"!="    { printf("RELACIONAL - Desigualdad: %s\n", yytext); }
"<"     { printf("RELACIONAL - Menor que: %s\n", yytext); }
">"     { printf("RELACIONAL - Mayor que: %s\n", yytext); }

[ \t\r\n\f\v]+  { /* Ignorar espacios en blanco. */ }
.               { /* Ignorar otros caracteres. */ }
%%

int main(void)
{
    yylex();
    return 0;
}
