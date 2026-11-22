# Analizadores Léxicos con Lex/Flex
### Compiladores y Lenguajes · Grupo 01

**Escuela Politécnica Nacional**  
Facultad de Ingeniería de Sistemas

---

## Integrantes

- Betancourt Enrique 
- Navarrete Alejandro
- Salazar Ambar

## Descripción

Colección de **14 ejercicios de análisis léxico** desarrollados con Lex/Flex y C, correspondientes a las prácticas de la Semana 4 y los nueve ejercicios propuestos en la Semana 6.

El trabajo comienza con la estructura básica de un programa Lex y avanza hacia el reconocimiento de tokens, la transformación de texto y la conversión de representaciones numéricas. Cada ejercicio combina expresiones regulares con acciones en C para resolver una tarea específica.

## Objetivo general

Aplicar los fundamentos del análisis léxico mediante la construcción de analizadores capaces de reconocer patrones, clasificar lexemas y ejecutar acciones asociadas a cada coincidencia.

## Ejercicios

### Ejercicios propuestos de Lex/Flex - Semana 4

| N.º | Archivo | Descripción del problema |
|:---:|---------|-------------------------|
| 01 | `uno.l` | Implementar un programa mínimo con `%%` para observar el comportamiento de eco predeterminado de Lex/Flex. |
| 02 | `dos.l` | Reconocer las palabras `pare` e `inicio` y ejecutar las acciones correspondientes para simular órdenes. |
| 03 | `tres.l` | Contabilizar los saltos de línea y los caracteres procesados mediante reglas y contadores. |
| 04 | `cuatro.l` | Construir un reconocedor básico de números e identificadores mediante expresiones regulares. |
| 05 | `cinco.l` | Incorporar el reconocimiento de números reales con notación exponencial, considerando signo, parte decimal y exponente. |

### Ejercicios propuestos de Lex/Flex — Semana 6

| N.º | Archivo | Descripción del problema |
|:---:|---------|-------------------------|
| 06 | `seis.l` | Contar letras mayúsculas, minúsculas, dígitos y espacios en blanco, relacionando esta clasificación con la formación de tokens. |
| 07 | `siete.l` | Reconocer identificadores, las palabras reservadas `if`, `else`, `while` e `int`, y números enteros. Mostrar el tipo de token y su lexema. |
| 08 | `ocho.l` | Identificar operadores aritméticos y relacionales, e imprimir el tipo de operador reconocido. |
| 09 | `nueve.l` | Convertir las letras mayúsculas a minúsculas y conservar los demás caracteres, aplicando normalización léxica. |
| 10 | `diez.l` | Contar las apariciones de cada dígito del `0` al `9` y presentar una tabla de frecuencias. |
| 11 | `once.l` | Detectar patrones simples de direcciones de correo electrónico y reconocerlos como tokens válidos. |
| 12 | `doce.l` | Reconocer números binarios y convertirlos a su valor decimal. |
| 13 | `trece.l` | Reconocer números hexadecimales con prefijo `0x` y convertirlos a su valor decimal. |
| 14 | `catorce.l` | Procesar listas de identificadores o números enteros separados por comas y reportar otros tipos de token como errores. |

## Herramientas

| Herramienta | Función |
|-------------|---------|
| **Lex/Flex** | Generar analizadores léxicos a partir de expresiones regulares y acciones. |
| **C** | Implementar contadores, conversiones, funciones auxiliares y presentación de resultados. |
| **GCC** | Compilar el código C generado y enlazar la biblioteca de Flex. |
| **Ubuntu GNU/Linux** | Proporcionar el entorno de desarrollo, compilación y ejecución. |
| **Terminal** | Ejecutar los comandos necesarios para generar y comprobar los analizadores. |

## Estructura de los programas

Los archivos `.l` se organizan en tres secciones separadas mediante `%%`:

1. **Definiciones:** opciones de configuración, bibliotecas, variables y patrones reutilizables.
2. **Reglas:** expresiones regulares acompañadas de acciones en C.
3. **Código auxiliar:** funciones que complementan el analizador, como `main()` y procedimientos de apoyo.

Según el ejercicio, algunas secciones pueden quedar vacías.

## Características importantes.

| Elemento | Función |
|----------|---------|
| `yytext` | Contiene el lexema reconocido en la coincidencia actual. |
| `yyleng` | Indica la longitud del lexema reconocido. |
| `yylex()` | Ejecuta el analizador generado por Flex. |
| `yyin` | Permite indicar el archivo desde el que se realiza la lectura. |

## Generación y compilación

Para un archivo denominado `programa.l`:

    flex programa.l
    gcc lex.yy.c -lfl

Flex genera el archivo `lex.yy.c`, que contiene la implementación del analizador en C. GCC compila ese archivo y produce el ejecutable `a.out`. La opción `-lfl` enlaza la biblioteca de soporte de Flex.

El proceso general es:

    Archivo .l → Flex → lex.yy.c → GCC → a.out

Los comandos deben ejecutarse desde el directorio donde se encuentra el archivo fuente. Cada nueva generación y compilación puede reemplazar los archivos `lex.yy.c` y `a.out` anteriores.

## Relación con los compiladores

El análisis léxico permite reconocer los componentes básicos de un lenguaje. A partir de los caracteres, el analizador identifica lexemas y los clasifica en categorías, como identificadores, palabras reservadas, números y operadores.

Estos ejercicios permiten practicar esa etapa mediante tareas concretas de reconocimiento, clasificación y transformación, como preparación para el estudio del análisis sintáctico.

## Material de referencia

- Diapositivas de la Semana 4: estructura de programas Lex y prácticas con Lex/Flex y GCC.
- Diapositivas de la Semana 6: ejercicios propuestos de analizadores léxicos.
- Apuntes y ejemplos desarrollados en clase.

---
