Funcion PedirMateria
	Escribir "Ingresa el nombre de la materia"
FinFuncion

Funcion PedirCalif
	Escribir "Ingresa la calificacion"
FinFuncion

Funcion prom<-PromedioDeSuma(suma)
	prom<-suma/4
FinFuncion

Algoritmo sin_titulo
	Definir calif1,calif2,calif3,calif4,promedio,suma Como real
	Definir nombre_alumno,materia1,materia2,materia3,materia4 Como Caracter
	
	Escribir "Ingresa tu nombre"
	Leer nombre_alumno
	nombre_alumno<-Mayusculas(nombre_alumno)
	
	PedirMateria()
	Leer materia1
	PedirCalif()
	Leer calif1
	suma<-suma+calif1
	
	PedirMateria()
	Leer materia2
	PedirCalif()
	Leer calif2
	suma<-suma+calif2
	
	PedirMateria()
	Leer materia3
	PedirCalif()
	Leer calif3
	suma<-suma+calif3
	
	PedirMateria()
	Leer materia4
	PedirCalif()
	Leer calif4
	suma<-suma+calif4
	
	promedio<-redon(PromedioDeSuma(suma))
	Escribir "Tu calificacion final ",nombre_alumno," es: ", promedio
	Escribir "Aprobado: ", prom>=6
FinAlgoritmo
