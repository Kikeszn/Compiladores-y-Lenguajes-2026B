%{
#include <stdlib.h>
#include <stdio.h>
int conteo[10] = {0};
%}

%%
[0-9]   conteo[yytext[0] - '0']++;
.|\n    ;
%%

int main() {
    yylex();
    printf("Digito\tCantidad\n");
    for (int i = 0; i < 10; i++) {
        printf("%d\t%d\n", i, conteo[i]);
    }
    return 0;
}
