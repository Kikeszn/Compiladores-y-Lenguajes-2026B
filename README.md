# Analizadores Léxicos con Lex/Flex
### Compiladores y Lenguajes · Grupo 01

**Escuela Politécnica Nacional**  
Facultad de Ingeniería de Sistemas

---

## Integrantes

- Enrique Betancourt
- Alejandro Navarrete
- Ambar Salazar

## Descripción

Este proyecto reúne tres analizadores léxicos desarrollados con **Lex/Flex y C**. Los ejercicios permiten clasificar caracteres, reconocer tokens e identificar operadores mediante expresiones regulares.

## Ejercicios

| N.º | Analizador | Funcionalidad |
|:---:|------------|---------------|
| 06 | Conteo de caracteres | Cuenta mayúsculas, minúsculas, dígitos y espacios en blanco. |
| 07 | Reconocimiento de tokens | Identifica palabras reservadas, identificadores y números enteros. |
| 08 | Reconocimiento de operadores | Clasifica operadores aritméticos y relacionales. |

### Ejercicio 06 · Conteo de caracteres

Clasifica cada carácter de entrada y acumula los totales correspondientes.

- **Mayúsculas:** `A–Z`.
- **Minúsculas:** `a–z`.
- **Dígitos:** `0–9`.
- **Espacios en blanco:** espacios, tabulaciones y saltos de línea, entre otros.

Los demás caracteres se ignoran.

### Ejercicio 07 · Reconocimiento de tokens

Imprime el **tipo de token** y su **lexema**.

- **Palabras reservadas:** `if`, `else`, `while`, `int`.
- **Identificadores:** comienzan con una letra o guion bajo y pueden continuar con letras, dígitos o guiones bajos.
- **Enteros:** secuencias de uno o más dígitos, sin signo.

Los caracteres que no corresponden a estas categorías se reportan como `NO_RECONOCIDO`.

### Ejercicio 08 · Reconocimiento de operadores

Imprime la categoría, el nombre y el símbolo del operador encontrado.

| Categoría | Operadores |
|-----------|------------|
| Aritméticos | `+` · `-` · `*` · `/` |
| Relacionales | `<` · `<=` · `>` · `>=` · `==` · `!=` |

Los espacios y otros caracteres se ignoran.

---

## Herramientas

| Herramienta | Uso |
|-------------|-----|
| Lex/Flex | Generación del analizador a partir de patrones y acciones. |
| C | Implementación de las acciones y presentación de resultados. |
| GCC | Compilación del código generado. |
| Ubuntu | Entorno de compilación y ejecución. |

## Archivos

| Archivo | Descripción |
|---------|-------------|
| `seis.l` | Código fuente del ejercicio 06. |
| `reconocedor.l` | Código fuente del ejercicio 07. |
| `ocho.l` | Código fuente del ejercicio 08. |
| `lex.yy.c` | Código C generado automáticamente por Flex. |
| `a.out` | Ejecutable generado por GCC. |
| `entrada.txt` | Texto utilizado para las pruebas. |
| `salida.txt` | Resultados guardados durante la ejecución. |

> Cada ejecución de Flex genera `lex.yy.c`. Al compilar con los comandos siguientes, `a.out` corresponde al último ejercicio compilado.

## Compilación

Ejecutar los comandos del ejercicio que se desea probar.

### Ejercicio 06

    flex seis.l
    gcc lex.yy.c -lfl

### Ejercicio 07

    flex reconocedor.l
    gcc lex.yy.c -lfl

### Ejercicio 08

    flex ocho.l
    gcc lex.yy.c -lfl

La opción `-lfl` enlaza la biblioteca de soporte de Flex.

## Ejecución

### Entrada interactiva

    ./a.out

Escribir el texto directamente en la terminal. Para finalizar en Ubuntu, presionar **Ctrl+D en una línea vacía**.

El ejercicio 06 muestra los totales al terminar la entrada. Los ejercicios 07 y 08 imprimen los elementos conforme los reconocen.

### Entrada y salida mediante archivos

    ./a.out < entrada.txt > salida.txt
    cat salida.txt

El programa procesa el contenido de `entrada.txt` y guarda sus resultados en `salida.txt`. La redirección `>` reemplaza el contenido anterior del archivo de salida.

---

## Ejemplos de prueba

### Ejercicio 06

    Hola MUNDO 123
    Compiladores y Lenguajes 2026
    Simbolos: @ # !

Los saltos de línea también se contabilizan como espacios en blanco.

### Ejercicio 07

    int edad 25
    if else while
    contador2 _total 100

Cada elemento reconocido se imprime acompañado de su categoría.

### Ejercicio 08

    a + b - c * d / e
    a < b
    a <= b
    a > b
    a >= b
    a == b
    a != b

Se muestran únicamente los operadores reconocidos.

## Relación con el análisis léxico

La clasificación de caracteres permite distinguir letras, dígitos y separadores. Mediante patrones, el analizador agrupa caracteres en lexemas y les asigna una categoría de token.

Por ejemplo, en `int edad`, el lexema `int` corresponde a una palabra reservada y `edad` a un identificador. En los analizadores desarrollados, la variable `yytext` contiene el lexema reconocido por Flex.

---
