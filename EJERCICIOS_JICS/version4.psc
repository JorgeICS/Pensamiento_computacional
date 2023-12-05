Funcion PedirMateria()
	Escribir 'Ingresa la materia'
FinFuncion

// procedimiento para pedir calificaciones
Funcion PedirCalificacion()
	Escribir 'Ingresa la calificacion'
FinFuncion

// funcion para calcular promedio
Funcion promedio <- CalcularPromedio(suma)
	promedio <- suma/4
FinFuncion

Algoritmo sin_titulo
	Definir cal1,cal2,cal3,cal4,promedio,suma,cal_alta,cal_baja Como Real
	Definir nombre_alumno,materia1,materia2,materia3,materia4,materia_baja,materia_alta Como Caracter
	// solicitamos y almacenamos nombre del alumno
	Escribir 'Ingresa el nombre del alumno'
	Leer nombre_alumno
	nombre_alumno <- Mayusculas(nombre_alumno)
	// solicitamos y almacenamos nombre materia1 y calificación 1
	PedirMateria()
	Leer materia1
	Si longitud(materia1)=4 Entonces
		PedirCalificacion()
		Leer cal1
		Si cal1>0 Y cal1<=10 Entonces
			suma <- suma+cal1
			materia_alta<-materia1
			cal_alta<-cal1
			materia_baja<-materia1
			cal_baja<-cal1
			// solicitamos y almacenamos nombre materia2 y calificación 2
			PedirMateria()
			Leer materia2
			Si longitud(materia2)=4 Entonces
				PedirCalificacion()
				Leer cal2
				Si cal2>0 Y cal2<=10 Entonces
					suma <- suma+cal2
					Si cal_alta<cal2 Entonces
						cal_alta<-cal2
						materia_alta<-materia2
					SiNo
						cal_baja<-cal2
						materia_baja<-materia2
					FinSi
					// solicitamos y almacenamos nombre materia3 y calificación 3
					PedirMateria()
					Leer materia3
					Si longitud(materia3)=4 Entonces
						PedirCalificacion()
						Leer cal3
						Si cal3>0 Y cal3 <=10 Entonces
							suma <- suma+cal3
							Segun cal3 Hacer
									cal_alta<=cal3:
										cal_alta<-cal3
										materia_alta<-materia3
								cal_baja>=cal3:
									cal_baja<-cal3
									materia_baja<-materia3
							Fin Segun
							// solicitamos y almacenamos nombre materia4 y calificación 4
							PedirMateria()
							Leer materia4
							Si longitud(materia4)=4 Entonces
								PedirCalificacion()
								Leer cal4
								Si cal4 > 0 Y cal4 <= 10 Entonces
									suma <- suma+cal4
									Segun cal4 Hacer
										cal_alta<=cal4:
											cal_alta<-cal4
											materia_alta<-materia4
										cal_baja>=cal4:
											cal_baja<-cal4
											materia_baja<-materia4
									Fin Segun
									promedio <- redon(CalcularPromedio(suma))
									Si promedio<=10 Y promedio>=9 Entonces
										Escribir "E"
									SiNo
										Si promedio<9 Y promedio>=7 Entonces
											Escribir "MB"
										SiNo
											Si promedio<7 y promedio>=6 Entonces
												Escribir "B"
											SiNo
												Si promedio<6 Y promedio>0 Entonces
													Escribir "Reprobado"
												SiNo
													Escribir "Recursar"
												FinSi
											FinSi
										FinSi
									FinSi
								SiNo
									Escribir "Calificación fuera de rango"
								FinSi
							FinSi
						SiNo
							Escribir "Calificación fuera de rango"
						FinSi
					FinSi
				SiNo
					Escribir "Calificación fuera de rango"
				FinSi
			FinSi
		SiNo
			Escribir 'Calificación fuera de rango'
		FinSi
	FinSi
FinAlgoritmo