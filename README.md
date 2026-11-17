Ejercicio ValidarPin:
Prueba:
Ingresa tu pin
> 2345
Ingresa tu pin
> 4532
Ingresa tu pin
> 2344
Tarjeta bloqueada

-----------------------------------------------

Ejercicio CajeroParqueadero:
Pruebas:
Valor cobrado (0 para cerrar caja)
> 25000
Valor cobrado (0 para cerrar la caja)
> 23500
Valor cobrado (0 para cerrar la caja)
> 0
Carros atendidos: 2
Total recaudos: $48500


Traza
Datos de entrada de la prueba: 3000, 5000, 2000, 0

Paso	Instrucción	valor	valor <> 0	total	carros	Salida en pantalla
1	total <- 0	—	—	0	—	
2	carros <- 0	—	—	0	0	
3	Escribir + Leer valor	3000	—	0	0	Valor cobrado (0 para cerrar caja)
4	Evaluar condición	3000	Verdadero	0	0	
5	total <- total + valor	3000		3000	0	
6	carros <- carros + 1	3000		3000	1	
7	Escribir + Leer valor	5000		3000	1	Valor cobrado (0 para cerrar la caja)
8	Evaluar condición	5000	Verdadero	3000	1	
9	total <- total + valor	5000		8000	1	
10	carros <- carros + 1	5000		8000	2	
11	Escribir + Leer valor	2000		8000	2	Valor cobrado (0 para cerrar la caja)
12	Evaluar condición	2000	Verdadero	8000	2	
13	total <- total + valor	2000		10000	2	
14	carros <- carros + 1	2000		10000	3	
15	Escribir + Leer valor	0		10000	3	Valor cobrado (0 para cerrar la caja)
16	Evaluar condición	0	Falso → sale del ciclo	10000	3	
17	Escribir "Carros atendidos: "	0		10000	3	Carros atendidos: 3
18	Escribir "Total recaudos: $"	0		10000	3	Total recaudos: $10000

Árbol de componentes
│
├── 1. Declaración de variables
│     ├── valor   : Real      (valor cobrado a cada carro)
│     ├── total   : Real      (acumulador del recaudo)
│     └── carros  : Entero    (contador de carros atendidos)
│
├── 2. Inicialización
│     ├── total  <- 0
│     └── carros <- 0
│
├── 3. Lectura inicial (lectura anticipada)
│     ├── Escribir "Valor cobrado (0 para cerrar caja)"
│     └── Leer valor
│
├── 4. Ciclo Mientras  (condición: valor <> 0)
│     ├── Acumular:   total  <- total + valor
│     ├── Contar:     carros <- carros + 1
│     ├── Escribir "Valor cobrado (0 para cerrar la caja)"
│     └── Leer valor                      (actualiza la condición)
│
└── 5. Salida de resultados
      ├── Escribir "Carros atendidos: ", carros
      └── Escribir "Total recaudos: $", total

------------------------------------------------------

Ejercicio Calificaciones:
Pruebas:
Nota del estudiante 1:
> 3.5
Nota del estudiante 2:
> 2.8
Nota del estudiante 3:
> 4.9
Nota del estudiante 4:
> 3.0
Nota del estudiante 5:
> 4.2
Promedio: 3.68
Aprobados: 4
Nota mas alta: 4.9 y nota mas baja: 2.8
Hay estudiantes en refuerzo

-------------------------------------------------------------

Ejercicio Piramide:
Prueba 1: 
Altura de la pirámide:
> 1
*

Prueba 2:
Altura de la pirámide:
> 4
   *
  ***
 *****
*******

Prueba 3:
Altura de la pirámide:
> 6
     *
    ***
   *****
  *******
 *********
***********

Árbol de componentes
│
├── 1. Declaración de variables
│     ├── n     : Entero   (altura de la pirámide)
│     ├── fila  : Entero   (fila actual)
│     └── j     : Entero   (contador de los ciclos internos)
│
├── 2. Entrada de datos
│     ├── Escribir "Altura de la pirámide:"
│     └── Leer n
│
└── 3. Ciclo externo Para fila <- 1 Hasta n
      │
      ├── 3.1 Ciclo interno A: espacios
      │     ├── Para j <- 1 Hasta n - fila
      │     └── Escribir Sin Saltar " "
      │
      ├── 3.2 Ciclo interno B: asteriscos
      │     ├── Para j <- 1 Hasta 2 * fila - 1
      │     └── Escribir Sin Saltar "*"
      │
      └── 3.3 Salto de línea
            └── Escribir ""

Traza

Dato de entrada de la prueba: n = 4

Traza general del ciclo externo
fila	Espacios (n - fila)	Asteriscos (2 * fila - 1)	Línea impresa
1	4 - 1 = 3	2·1 - 1 = 1	···*
2	4 - 2 = 2	2·2 - 1 = 3	··***
3	4 - 3 = 1	2·3 - 1 = 5	·*****
4	4 - 4 = 0	2·4 - 1 = 7	*******

--------------------------------------------------------------------------

Ejercicio FacturaRestaurante:
Prueba:
Precio del producto (0 para terminar):
> 25000
Cantidad:
> 2
Precio del producto (0 para terminar):
> 12000
Cantidad:
> 1
Precio del producto (0 para terminar):
> 0
------ FACTURA ------
Subtotal: 62000
Impuesto (8%): 4960
Propina (10%): 6200
Total: 73160