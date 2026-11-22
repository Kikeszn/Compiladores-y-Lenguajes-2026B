%{
#include <stdio.h>
%}

%%
[01]+       {
                unsigned long long decimal = 0;
                int i;
                for (i = 0; yytext[i] != '\0'; i++)
                    decimal = decimal * 2 + (yytext[i] - '0');
                printf("Valida: %s -> Decimal: %llu\n", yytext, decimal);
            }
[^ \t\r\n]+ { printf("Invalida: %s\n", yytext); }
[ \t\r\n]+  { }
%%

int main()
{
    yylex();
    return 0;
}
