Algoritmo analizador_matematico
	Definir opcion, totalOperaciones Como Entero
	Definir i, j Como Entero
	Definir idBuscar Como Entero
	Definir siguienteID Como Entero
	Definir encontrado Como Logico
	Definir id Como Entero
	Definir operacion Como Caracter
	Definir numero1 Como Real
	Definir numero2 Como Real
	Definir tipoOperacion Como Caracter
	Definir resultado Como Real
	Definir estado Como Caracter
	Dimension id[100]
	Dimension operacion[100]
	Dimension numero1[100]
	Dimension numero2[100]
	Dimension tipoOperacion[100]
	Dimension resultado[100]
	Dimension estado[100]
	totalOperaciones <- 0
	siguienteID <- 1
	//------------------------------------------//
	//--|menu_principal_analizador_matematico|--//
	//------------------------------------------//
	Repetir
		Escribir "menu principal analizador matematico"
		Escribir "1) registrar operacion"
		Escribir "2) editar operacion"
		Escribir "3) eliminar operacion"
		Escribir "4) buscar operacion"
		Escribir "5) listar operaciones"
		Escribir "6) ver detalles de la operacion"
		Escribir "7) mostrar estadisticas"
		Escribir "8) salir"
		Escribir "seleccione una opcion:"
		Leer opcion
		Segun opcion Hacer
			//-------------------------//
			//--|registrar_operacion|--//
			//-------------------------//
			1:
				Escribir "registrar operacion"
				id[totalOperaciones+1] <- siguienteID
				siguienteID <- siguienteID + 1
				Escribir "id asignado: ", id[totalOperaciones+1]
				Escribir "ingrese la operacion:"
				Leer operacion[totalOperaciones+1]
				Escribir "ingrese el primer numero:"
				Leer numero1[totalOperaciones+1]
				Escribir "ingrese el segundo numero:"
				Leer numero2[totalOperaciones+1]
				Escribir "ingrese el tipo de operacion:"
				Leer tipoOperacion[totalOperaciones+1]
				Escribir "ingrese el resultado:"
				Leer resultado[totalOperaciones+1]
				Escribir "ingrese el estado:"
				Leer estado[totalOperaciones+1]
				totalOperaciones <- totalOperaciones + 1
				Escribir "operacion registrada correctamente."
			//----------------------//
			//--|editar_operacion|--//
			//----------------------//
			2:
				Escribir "editar operacion"
				Si totalOperaciones = 0 Entonces
					Escribir "no hay operaciones registradas."
				SiNo
					Escribir "datos registrados a editar"
					Para i <- 1 Hasta totalOperaciones Hacer
						Escribir id[i], " | ", operacion[i], " | ", numero1[i], " | ", numero2[i], " | ", tipoOperacion[i], " | ", resultado[i], " | ", estado[i]
					FinPara
					Escribir "ingrese el id de la operacion:"
					Leer idBuscar
					encontrado <- Falso
					Para i <- 1 Hasta totalOperaciones Hacer
						Si id[i] = idBuscar Entonces
							encontrado <- Verdadero
							Escribir "ingrese la nueva operacion:"
							Leer operacion[i]
							Escribir "ingrese el nuevo primer numero:"
							Leer numero1[i]
							Escribir "ingrese el nuevo segundo numero:"
							Leer numero2[i]
							Escribir "ingrese el nuevo tipo de operacion:"
							Leer tipoOperacion[i]
							Escribir "ingrese el nuevo resultado:"
							Leer resultado[i]
							Escribir "ingrese el nuevo estado:"
							Leer estado[i]
							Escribir "operacion editada correctamente."
						FinSi
					FinPara
					Si encontrado = Falso Entonces
						Escribir "no se encontró una operacion con ese id."
					FinSi
				FinSi
			//------------------------//
			//--|eliminar_operacion|--//
			//------------------------//
			3:
				Escribir "eliminar operacion"
				Si totalOperaciones = 0 Entonces
					Escribir "no hay operaciones registradas."
				SiNo
					Escribir "datos registrados a eliminar"
					Para i <- 1 Hasta totalOperaciones Hacer
						Escribir id[i], " | ", operacion[i], " | ", numero1[i], " | ", numero2[i], " | ", tipoOperacion[i], " | ", resultado[i], " | ", estado[i]
					FinPara
					Escribir "ingrese el id de la operacion:"
					Leer idBuscar
					encontrado <- Falso
					Para i <- 1 Hasta totalOperaciones Hacer
						Si id[i] = idBuscar Entonces
							encontrado <- Verdadero
							Si i < totalOperaciones Entonces
								Para j <- i Hasta totalOperaciones - 1 Hacer
									id[j] <- id[j+1]
									operacion[j] <- operacion[j+1]
									numero1[j] <- numero1[j+1]
									numero2[j] <- numero2[j+1]
									tipoOperacion[j] <- tipoOperacion[j+1]
									resultado[j] <- resultado[j+1]
									estado[j] <- estado[j+1]
								FinPara
							FinSi
							totalOperaciones <- totalOperaciones - 1
							Escribir "operacion eliminada correctamente."
						FinSi
					FinPara
					Si encontrado = Falso Entonces
						Escribir "no se encontró una operacion con ese id."
					FinSi
				FinSi
			//----------------------//
			//--|buscar_operacion|--//
			//----------------------//
			4:
				Escribir "buscar operacion"
				Si totalOperaciones = 0 Entonces
					Escribir "no hay operaciones registradas."
				SiNo
					Escribir "ingrese el id de la operacion:"
					Leer idBuscar
					encontrado <- Falso
					Para i <- 1 Hasta totalOperaciones Hacer
						Si id[i] = idBuscar Entonces
							encontrado <- Verdadero
							Escribir "datos encontrados"
							Escribir id[i], " | ", operacion[i], " | ", numero1[i], " | ", numero2[i], " | ", tipoOperacion[i], " | ", resultado[i], " | ", estado[i]
						FinSi
					FinPara
					Si encontrado = Falso Entonces
						Escribir "no se encontró una operacion con ese id."
					FinSi
				FinSi
			//------------------------//
			//--|listar_operaciones|--//
			//------------------------//
			5:
				Escribir "listar operaciones"
				Si totalOperaciones = 0 Entonces
					Escribir "no hay operaciones registradas."
				SiNo
					Escribir "datos registrados"
					Para i <- 1 Hasta totalOperaciones Hacer
						Escribir id[i], " | ", operacion[i], " | ", numero1[i], " | ", numero2[i], " | ", tipoOperacion[i], " | ", resultado[i], " | ", estado[i]
					FinPara
				FinSi
			//----------------------------//
			//--|ver_detalles_operacion|--//
			//----------------------------//
			6:
				Escribir "ver detalles de la operacion"
				Si totalOperaciones = 0 Entonces
					Escribir "no hay operaciones registradas."
				SiNo
					Escribir "ingrese el id de la operacion:"
					Leer idBuscar
					encontrado <- Falso
					Para i <- 1 Hasta totalOperaciones Hacer
						Si id[i] = idBuscar Entonces
							encontrado <- Verdadero
							Escribir "detalles de la operacion"
							Escribir "id: ", id[i]
							Escribir "operacion: ", operacion[i]
							Escribir "primer numero: ", numero1[i]
							Escribir "segundo numero: ", numero2[i]
							Escribir "tipo de operacion: ", tipoOperacion[i]
							Escribir "resultado: ", resultado[i]
							Escribir "estado: ", estado[i]
						FinSi
					FinPara
					Si encontrado = Falso Entonces
						Escribir "no se encontró una operacion con ese id."
					FinSi
				FinSi
			//--------------------------//
			//--|mostrar_estadisticas|--//
			//--------------------------//
			7:
				Escribir "mostrar estadisticas"
				Si totalOperaciones = 0 Entonces
					Escribir "no hay operaciones registradas."
				SiNo
					sumaResultados <- 0
					mayorResultado <- resultado[1]
					menorResultado <- resultado[1]
					Para i <- 1 Hasta totalOperaciones Hacer
						sumaResultados <- sumaResultados + resultado[i]
						Si resultado[i] > mayorResultado Entonces
							mayorResultado <- resultado[i]
						FinSi
						Si resultado[i] < menorResultado Entonces
							menorResultado <- resultado[i]
						FinSi
					FinPara
					promedioResultados <- sumaResultados / totalOperaciones
					Escribir "estadistica general"
					Escribir "total de operaciones: ", totalOperaciones
					Escribir "promedio de resultados: ", promedioResultados
					Escribir "resultado mayor: ", mayorResultado
					Escribir "resultado menor: ", menorResultado
				FinSi
			//------------------------------//
			//--|salir_del_menu_principal|--//
			//------------------------------//
			8:
				Escribir "gracias por utilizar el analizador matematico."
			De Otro Modo:
				Escribir "opción no válida."
		FinSegun
	Hasta Que opcion = 8
FinAlgoritmo