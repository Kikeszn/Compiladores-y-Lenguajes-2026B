%{
#include <stdio.h>
%}

%%
0[xX][0-9a-fA-F]+   {
                        unsigned long long decimal = 0;
                        int i, digito;
                        for (i = 2; yytext[i] != '\0'; i++) {
                            if (yytext[i] >= '0' && yytext[i] <= '9')
                                digito = yytext[i] - '0';
                            else if (yytext[i] >= 'a' && yytext[i] <= 'f')
                                digito = yytext[i] - 'a' + 10;
                            else
                                digito = yytext[i] - 'A' + 10;
                            decimal = decimal * 16 + digito;
                        }
                        printf("Valida: %s -> Decimal: %llu\n", yytext, decimal);
                    }
[^ \t\r\n]+         { printf("Invalida: %s\n", yytext); }
[ \t\r\n]+          { }
%%

int main()
{
    yylex();
    return 0;
}
