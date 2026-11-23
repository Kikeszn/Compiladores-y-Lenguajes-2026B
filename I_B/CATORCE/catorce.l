%{
#include <stdio.h>
int ultimaComa = 0;
%}

%%
[a-zA-Z_][a-zA-Z0-9_]*  { printf("  Identificador: %s\n", yytext); ultimaComa = 0; }
[0-9]+                  { printf("  Entero: %s\n", yytext); ultimaComa = 0; }
","                     { printf("  Separador: ,\n"); ultimaComa = 1; }
[^ \t\r\n,]+            { printf("  Error: token no valido '%s'\n", yytext); ultimaComa = 0; }
\n                      {
                            if (ultimaComa)
                                printf("  Error: la lista no puede acabar en coma\n");
                            ultimaComa = 0;
                            printf("----------------------------------------\n");
                        }
[ \t\r]+                { }
%%

int main()
{
    printf("========== ANALISIS DE LISTAS ==========\n");
    yylex();
    if (ultimaComa)
        printf("  Error: la lista no puede acabar en coma\n");
    printf("========================================\n");
    return 0;
}
