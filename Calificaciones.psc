Proceso Calificaciones
	Definir i, aprobados Como Entero;
	Definir perdio Como Logico;
	suma <- 0;
	aprobados <- 0;
	perdio <- Falso;
	Para i <- 1 Hasta 5 Hacer
		Escribir "Nota del estudiante ", i, ":";
		Leer nota;
		suma <- suma + nota;
		Si nota >= 3 Entonces
			aprobados <- aprobados + 1;
		SiNo
			perdio <- Verdadero;
		FinSi
		Si i = 1 Entonces
			mayor <- nota;
			menor <- nota;
		SiNo
			Si nota > mayor Entonces
				mayor <- nota;
			FinSi
			Si nota < menor Entonces
				menor <- nota;
			FinSi
		FinSi
	FinPara
	Escribir "Promedio: ", suma / 5;
	Escribir "Aprobados: ", aprobados;
	Escribir "Nota mas alta: ", mayor, " y nota mas baja: ", menor;
	Si perdio Entonces
		Escribir "Hay estudiantes en refuerzo";
	FinSi
FinProceso
