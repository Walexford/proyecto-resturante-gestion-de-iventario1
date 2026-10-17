Algoritmo SistemaAlmacen
	Definir opcion, opcionDummy Como Cadena
	Definir salir Como Lógico
	Definir nombres Como Cadena
	Definir categorias Como Cadena
	Definir cantidades Como Entero
	Definir unidades Como Cadena
	Definir caducidades Como Cadena
	Definir hayStockBajo, vencimientoCercano Como Lógico
	Definir hoy, limiteVencimiento, estado Como Cadena
	Definir i Como Entero
	Dimensionar nombres(6)
	Dimensionar categorias(6)
	Dimensionar cantidades(6)
	Dimensionar unidades(6)
	Dimensionar caducidades(6)
	salir <- Falso
	// Inicializacion de datos (Del 1 al 6 porque PSeInt empieza en 1)
	nombres[1] <- 'Carne de Res'
	categorias[1] <- 'Carne'
	cantidades[1] <- 12
	unidades[1] <- 'kg'
	caducidades[1] <- '2026-10-25'
	nombres[2] <- 'Pechuga de Pollo'
	categorias[2] <- 'Carne'
	cantidades[2] <- 4
	unidades[2] <- 'kg'
	caducidades[2] <- '2026-10-17'
	nombres[3] <- 'Lechuga'
	categorias[3] <- 'Verdura'
	cantidades[3] <- 2
	unidades[3] <- 'unidades'
	caducidades[3] <- '2026-10-16'
	nombres[4] <- 'Tomate'
	categorias[4] <- 'Verdura'
	cantidades[4] <- 8
	unidades[4] <- 'kg'
	caducidades[4] <- '2026-10-22'
	nombres[5] <- 'Crema de Aji Artesanal'
	categorias[5] <- 'Crema'
	cantidades[5] <- 3
	unidades[5] <- 'frascos'
	caducidades[5] <- '2026-10-18'
	nombres[6] <- 'Mayonesa Casera'
	categorias[6] <- 'Crema'
	cantidades[6] <- 1
	unidades[6] <- 'frascos'
	caducidades[6] <- '2026-10-16'
	// Bucle principal
	Mientras salir==Falso Hacer
		Escribir ''
		Escribir '--- SISTEMA DE GESTION DE ALMACEN ---'
		Escribir '1. Ver Inventario General'
		Escribir '2. Ver productos con stock bajo'
		Escribir '3. Ver productos proximos a vencer / vencidos'
		Escribir '4. Salir'
		Escribir ''
		Escribir 'Selecciona una opcion (1-4): 'Sin Saltar
		Leer opcion
		Según opcion Hacer
			'1':
				Escribir ''
				Escribir '================================================================='
				Escribir 'INVENTARIO GENERAL DEL ALMACEN'
				Escribir '================================================================='
				Escribir 'PRODUCTO                  | CATEGORIA  | CANTIDAD | CADUCIDAD'
				Escribir '-----------------------------------------------------------------'
				Para i<-1 Hasta 6 Hacer
					Escribir nombres[i], ' | ', categorias[i], ' | ', cantidades[i], ' | ', caducidades[i]
				FinPara
				Escribir '================================================================='
				Escribir ''
				Escribir 'Presiona cualquier tecla para continuar: 'Sin Saltar
				Leer opcionDummy
			'2':
				Escribir ''
				Escribir '========================================'
				Escribir 'PRODUCTOS CON STOCK BAJO (< 5)'
				Escribir '========================================'
				hayStockBajo <- Falso
				Para i<-1 Hasta 6 Hacer
					Si cantidades[i]<5 Entonces
						hayStockBajo <- Verdadero
						Escribir ' - ', nombres[i], ' (', categorias[i], '): Solo quedan ', cantidades[i], ' ', unidades[i]
					FinSi
				FinPara
				Si hayStockBajo==Falso Entonces
					Escribir ' No hay productos con stock bajo.'
				FinSi
				Escribir '========================================'
				Escribir ''
				Escribir 'Presiona cualquier tecla para continuar: 'Sin Saltar
				Leer opcionDummy
			'3':
				Escribir ''
				Escribir '========================================'
				Escribir 'PRODUCTOS PROXIMOS A VENCER O VENCIDOS'
				Escribir '========================================'
				hoy <- '2026-10-16'
				limiteVencimiento <- '2026-10-19'
				vencimientoCercano <- Falso
				Para i<-1 Hasta 6 Hacer
					Si caducidades[i]<=limiteVencimiento Entonces
						vencimientoCercano <- Verdadero
						Si caducidades[i]<hoy Entonces
							estado <- 'VENCIDO'
						SiNo
							estado <- 'Vence pronto'
						FinSi
						Escribir ' - ', nombres[i], ' (', caducidades[i], '): ', estado
					FinSi
				FinPara
				Si vencimientoCercano==Falso Entonces
					Escribir ' Ningun producto esta proximo a vencer.'
				FinSi
				Escribir '========================================'
				Escribir ''
				Escribir 'Presiona cualquier tecla para continuar: 'Sin Saltar
				Leer opcionDummy
			'4':
				Escribir ''
				Escribir 'Saliendo del sistema de almacen. Hasta luego.'
				salir <- Verdadero
			De Otro Modo:
				Escribir 'Opcion no valida. Elige un numero entre 1 y 4.'
		FinSegún
	FinMientras
FinAlgoritmo
