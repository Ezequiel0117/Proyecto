// Funciones o SubAlgoritmo  del proyecto
// SubAlgoritmo menus del proyecto
Funcion opcion = presentarMenu(titulo,menu,lim)
	Definir opcion Como Caracter
	Definir pos Como Entero
	Borrar Pantalla
	Escribir titulo
	Para pos=0 Hasta lim-1 Con Paso 1 Hacer
		Escribir menu[pos]
	Fin Para
	Escribir "       Elija opcion[1..",lim,"]" Sin Saltar
	leer opcion
FinFuncion


//submenu numerico
Funcion Ejercicio1()
	Limpiar Pantalla
	definir resultado1, resultado4 Como logico
	Definir resultado2 Como Entero
	Definir resultado3 Como Real
	//	Ejercicio 1.
	//	¿Siguiendo la prioridad de operadores, convierta a expresión matemática,
	//	resuelva e indique en cuál tipo de variable almacenará el resultado de las
	Escribir "1. (5 + 3 * 2) + 9 > 3 * 5 * 14 % 3 "
	Escribir "2. 2 *(4 - 10 + 8)/2* 36 *(1/2)"
	Escribir "3. 260 / 12 + 54 % 3 - 85 % 7 "
	Escribir "4. ((8 > 2) || (932 < 23) ) && 4 == 2"
	Escribir "Escoja Ejercicio a resolver"
	opc <- ""
	leer opc
	Limpiar Pantalla
	Segun opc Hacer
		"1":
			Escribir "1. (5 + 3 * 2) + 9 > 3 * 5 * 14 % 3 "
			resultado1 <- (5 + 3 * 2) + 9 > 3 * 5 * 14 % 3
			valor1 <- (5 + 3 * 2) + 9
			valor2 <- 3 * 5 * 14 % 3
			Escribir "Almacenara una variable de tipo Booleano"
			Escribir "Da como resultado : " resultado1;
			Escribir "El valor de (5 + 3 * 2) + 9 : ", valor1, " y el valor de 3 * 5 * 14 % 3 es : ", valor2;
		"2":
			Escribir "2. 2 *(4 - 10 + 8)/2* 36 *(1/2)"
			resultado2 <- 2 * ( 4-10+8)/2*36*(1/2)
			valor1 <- 2 *(4 - 10 + 8)
			valor2 <- 2*36*(1/2)
			Escribir "Almacenara una variable de tipo Entero"
			Escribir "Da como resultado : " resultado2;
		"3":
			Escribir "3. 260 / 12 + 54 % 3 - 85 % 7 "
			resultado3 <- 260 / 12 + 54 % 3 - 85 % 7
			Escribir "Almacenara una variable de tipo Real"
			Escribir "Da como resultado : " resultado3;
		"4":
			Escribir "4. ((8 > 2) || (932 < 23) ) && 4 == 2"
			resultado4 <- ((8 > 2) | (932 < 23) ) & 4 == 2
			Escribir "Almacenara una variable de tipo Booleano"
			Escribir "Da como resultado : " resultado4;
		De Otro Modo:
			Escribir "No esxite esa opcion"
	Fin Segun
FinFuncion


Funcion Ejercicio2()
	Limpiar Pantalla
	//Se definen los operadores y ingresado el operador se verifica cual es y se procede a hacer dicha operacion
	//	si op = "resta" Entonces
	//		resultado <- num1 - num2
	//		Escribir "La resta es de : ", resultado
	//	SiNo
	//		si op = "suma" Entonces
	//			resultado <- num1 + num2
	//			Escribir "La suma es de : ", resultado
	//		sino
	//			si op = "multiplicacion" Entonces
	//				resultado <- num1 * num2
	//				Escribir "La multiplicacion es de : ", resultado
	//			SiNo
	//				si op = "division" Entonces
	//					resultado <- num1 / num2
	//					Escribir "La divison es de : ", resultado
	//				SiNo
	//					si op = "modulo" Entonces
	//						resultado <- num1%num2
	//						Escribir "El modulo es de : ", resultado
	Escribir "Dados dos (2) números calcule la suma, resta, multiplicación, división y módulo."
	Definir op Como Caracter
	Definir num1,num2 Como Entero
	Definir resultado como real
	Escribir "Que operacion desea realizar (suma,resta,multiplicacion,division o modulo )"
	op <- "";
	Leer op;
	Escribir "Ingrese 2 numeros "
	Leer num1,num2;
	
	si op = "resta" Entonces
		resultado <- num1 - num2
		Escribir "La resta es de : ", resultado
	SiNo
		si op = "suma" Entonces
			resultado <- num1 + num2
			Escribir "La suma es de : ", resultado
		sino
			si op = "multiplicacion" Entonces
				resultado <- num1 * num2
				Escribir "La multiplicacion es de : ", resultado
			SiNo
				si op = "division" Entonces
					resultado <- num1 / num2
					Escribir "La divison es de : ", resultado
				SiNo
					si op = "modulo" Entonces
						resultado <- num1%num2
						Escribir "El modulo es de : ", resultado
					FinSi
				FinSi
			FinSi
		FinSi
	FinSi
FinFuncion


Funcion Ejercicio3()
	Limpiar Pantalla
	//	Ejercicio 3. Dados tres (3) números, Hacer una aplicación que calcule la resolvente
	Definir num1,num2,num3,delta,x,x1,x2 Como Real
	Escribir "Dados tres (3) números, Hacer una aplicación que calcule la resolvente"
	Escribir "Ingrese 3 numeros:"
	Leer num1,num2,num3
	Limpiar Pantalla
	//delta se refiere al discriminante, es una expresión matemática que se utiliza para determinar el tipo y número 
	//de soluciones de una ecuación cuadrática.
	delta <- num2^2 - 4 * num1 * num3
	Si delta < 0 entonces
		Escribir "La ecuación no tiene soluciones reales"
	Sino 
		si delta = 0 entonces
			//	Un ejemplo para cuando tiene una solucion :
			//	num1 = 2
			//	num2 = -4
			//	num3 = 2
			//	daria como resultado :
			//	x = 1
			x <- -num2 / (2 * num1)
			Escribir "La ecuación tiene una solución real:"
			Escribir "x = ", x
		Sino
			//	Un ejemplo para cuando tienes mas de una solucion :
			//	num1 = 1
			//	num2 = -5
			//	num3 = 6
			//	daria como resultado :
			//	x1 = 3
			//	x2 = 2
			x1 <- (-num2 + Raiz(delta)) / (2 * num1)
			x2 <- (-num2 - Raiz(delta)) / (2 * num1)
			Escribir "La ecuación tiene dos soluciones reales:"
			Escribir "x1 = ", x1
			Escribir "x2 = ", x2
		FinSi
	FinSi
FinFuncion


Funcion Ejercicio4()
	Limpiar Pantalla
	Escribir "Dados dos (2) lados de un triángulo en cm, calcular la hipotenusa del mismo."
	Escribir "Ingrese los lados del triangulo"
	Leer lado1,lado2
	//Formula para calcular la hipotenusa del trianguloS
	hp = lado1 ^ 2 + lado2 ^ 2
	hipotenusa <- raiz (hp)
	Escribir "La hipotenusa del triangulo es de : ", hipotenusa, " cm";
	
FinFuncion

Funcion Ejercicio5()
	Limpiar Pantalla
	//Dado un (1) número, imprimir 0 si es par y 1 si es impar.
	//definir num, resto como entero;
	//escribir "digite un numero";
	//leer num;
	//resto <- num mod 2;
	//Si resto = 0 Entonces
	//	Escribir "el numero es par: 0"  // El número es par
	//Sino
	//	Escribir "el numero es impar: 1"  // El número es impar
	//FinSi
	Definir num Como Entero
	Escribir "Dado un (1) número, imprimir 0 si es par y 1 si es impar."
	escribir "digite un numero";
	leer num;
	resto <- num mod 2;
	Si resto = 0 Entonces
        Escribir "el numero es par: 0"  // El número es par
    Sino
        Escribir "el numero es impar: 1"  // El número es impar
    FinSi
	
FinFuncion

Funcion Ejercicio6()
	Limpiar Pantalla
	//Dado un (1) número binario de cuatro (4) dígitos imprimir su valor
	Escribir "Dado un (1) número binario de cuatro (4) dígitos imprimir su valor"
	// Entrada: número binario de 4 dígitos
    // Salida: número decimal
    Definir numeroBinario Como Entero
    Definir decimal Como Real
    decimal <- 0
    Escribir "Ingrese el número binario de 4 dígitos: "
    Leer numeroBinario
	Limpiar Pantalla
    Si numeroBinario >= 1000 Entonces
        decimal <- decimal + 8
        numeroBinario <- numeroBinario - 1000
    Fin Si
	
    Si numeroBinario >= 100 Entonces
        decimal <- decimal + 4
        numeroBinario <- numeroBinario - 100
    Fin Si
	
    Si numeroBinario >= 10 Entonces
        decimal <- decimal + 2
        numeroBinario <- numeroBinario - 10
    Fin Si
	
    Si numeroBinario >= 1 Entonces
        decimal <- decimal + 1
    Fin Si
	
    Escribir "El número decimal equivalente es: ", decimal
	
	
FinFuncion


Funcion Ejercicio7()
	Limpiar Pantalla
	Definir unidades,unidades_Mil,decenas,centenas Como Real
	Definir num Como Entero
	Escribir"Ejercicio 7.Dado un (1) número de cuatro (4) dígitos imprimirlo por separado en unidades,decenas, centenas y unidades de mil." 
	Escribir "Ingrese un numero de 4 digitos"
	Leer num;
	Limpiar Pantalla
	
	//Entregamos el numero y hacemos las siguientes expresiones matematicas
	//Para ir calculando sus unidades, decenas,centenasy unidades_Mil
	
	//Para calcular las unidades utilizamos % 10
	unidades <- num % 10
	//Para calcular las decenas utilizamos el (num % 100) / 10 y el trunc solo para sacar el valor sin decimales
	decenas <- trunc ((num % 100)/10)
	//Para calcular las centenas utilizamos el (num % 1000) / 100 y el trunc solo para sacar el valor sin decimales
	centenas <- trunc ((num % 1000)/100)
	//Para calcular las unidades_Mil solo el num / 1000 y el trunc solo para sacar el valor sin decimales
	unidades_Mil <- trunc (num / 1000)
	
	Escribir "Unidades de mil : ", unidades_Mil
	Escribir "Numero en centenas : ", centenas;
	Escribir "Numero en decenas : ", decenas;
	Escribir "Numero en unidades : ", unidades;
	
FinFuncion

Funcion Ejercicio8()
	Limpiar Pantalla
	//	Dado un carácter indicar si es un digito o una consonante o un carácter especial.
    // Entrada: un carácter
    // Salida: tipo de carácter (dígito, consonante o carácter especial)
	
    Definir caract Como Caracter
	Escribir "Dado un carácter indicar si es un digito o una consonante o un carácter especial."
    Escribir "Ingrese un carácter: "
	caract <- "";
    Leer caract
	
    Si caract >= '0' y caract <= '9' Entonces
        Escribir "Es un dígito"
    Sino 
		Si (caract >= 'A' y caract <= 'Z') o (caract >= 'a' y caract <= 'z') Entonces
			
			Escribir "Es una consonante"
		Sino
			Escribir "Es un carácter especial"
		Fin Si
		
	finsi
	
FinFuncion

Funcion Ejercicio9()
	Limpiar Pantalla
	//Dado dos caracteres indicar si el primer carácter es igual, mayor o menor que el segundo
	//entrada
	//definir cart1, cart2 como caracter;
	//escribir "escribir dos caracter";
	//leer cart1, cart2;
	//proceso
	//si cart1 > cart2 Entonces
	//	escribir " el primer caracter es mayor que el segundo caracter:";
	//SiNo
	//	si cart1 < cart2 Entonces
	//		escribir "el primer caracter es menor que el segundo caracter:";
	//	SiNo
	//		escribir "ambos caracteres son iguales:";
	//	FinSi
	//FinSi
	//	Dado dos caracteres indicar si el primer carácter es igual, mayor o menor que el segundo
	Escribir "Dado dos caracteres indicar si el primer carácter es igual, mayor o menor que el segundo"
	definir cart1, cart2 como caracter;
	escribir "escribir dos caracter";
	leer cart1, cart2;
	si cart1 > cart2 Entonces
		escribir " el primer caracter es mayor que el segundo caracter:";
	SiNo
		si cart1 < cart2 Entonces
			escribir "el primer caracter es menor que el segundo caracter:";
		SiNo
			escribir "ambos caracteres son iguales:";
		FinSi
	FinSi
FinFuncion

Funcion Ejercicio10()
	Limpiar Pantalla
	Definir frase Como Caracter
	//	Dada una frase cualquiera presentarla en mayúscula y minuscula
	Escribir "Ingrese como desea presentarla (Mayus-Minus)"
	presentar <- ""
	Leer presentar
	
	Escribir "Ingrese una frase"
	frase <- ""
	Leer frase
	
	Limpiar Pantalla
	//Cuando se decide si es mayuscula o mjinuscula, ya se la transforma 
	si presentar = "Mayus" Entonces
		Escribir Mayusculas(frase)
	SiNo
		Escribir Minusculas(frase)
	FinSi
	
	
FinFuncion



//submenu  condicionales
Funcion EjercicioC1()
	Limpiar Pantalla
	//	Si (año % 400 = 0) o ((año % 4 = 0) y (año % 100 <> 0)) Entonces
	//        Escribir "El año es bisiesto."
	//    Sino
	//        Escribir "El año no es bisiesto."
	//	FinSi
	Escribir "Todos los años que se dividen exactamente entre 400, o que son divisibles exactamente entre 4 y no son divisibles exactamente entre 100 son años bisiestos.Usando estas" 
	Escribir" premisas crea un algoritmo que lea una fecha como un en tres variables: aaaa,mes, dia, y luego indique si el año de la fecha es un año bisiesto o no"
	
    Definir año, mes, día Como Entero
	
    Escribir "Ingrese el año: "
    Leer año
    Escribir "Ingrese el mes: "
    Leer mes
    Escribir "Ingrese el día: "
    Leer día
	Limpiar Pantalla
    Si (año % 400 = 0) o ((año % 4 = 0) y (año % 100 <> 0)) Entonces
        Escribir "El año es bisiesto."
    Sino
        Escribir "El año no es bisiesto."
	FinSi
FinFuncion

funcion EjercicioC2()
	Limpiar Pantalla
	Definir num,inversa Como Caracter
	Definir a,b,i Como Entero
	Escribir "Dado un número entero cuya cantidad de dígitos es igual a 5, determine si escapicúa"
	Escribir "Ingrese el numero de 5 digitos"
	leer num
	inversa="";
	//se saca la longitud del numero
	b=Longitud(num)
	
	//Se hace un proceso repetitivo el cual ira verificando numero por numero desde la posicion 0 hasta la -1 (que es el final)
	para i=b Hasta 0 Con Paso -1 Hacer
		inversa=inversa+Subcadena(num,i,i)
	FinPara
	Escribir inversa
	//Si el numero ingresado es igual al inverso entonces es escapicua
	si num=inversa Entonces
		Escribir "El numero: ",num," es escapicua"
	SiNo
		Escribir "El numero: ",num," no es escapicua"
	FinSi
FinFuncion

Funcion EjercicioC3()
	Limpiar Pantalla
	Definir dias,minutos,horas,sg Como real
	Escribir "Ejercicio 3. Para un valor entero positivo que representa una cantidad en segundos, indicar su equivalente en minutos, horas y días."
	Escribir "Ingrese un valor entero positivo : "
	Leer sg;
	
	Limpiar Pantalla
	//Se verifica si los segundos son positivos con sg > 0;
	//ejemplo se ingresan 86400 sg
	// da como resultado 1440 minutos, 24 horas, 1 dia
	si sg > 0 Entonces
		//Se calcula los segundos ingresados entre 60 para que nos de los minutos
		minutos <- sg / 60
		// ahora pasan los minutos entre 60 para que nos de la cantidad de horas
		horas <- minutos / 60
		// y por ultimo se calculan esas horas a dias entre 24 
		dias <- horas / 24
		Escribir "En dias representa : ", dias
		Escribir "En horas representa : ", horas
		Escribir "En minutos representa : ", minutos
	SiNo
		escribir "Error"
	FinSi
FinFuncion
Funcion EjercicioC4()
	Limpiar Pantalla
	//	Dados tres números enteros positivos A, B y C, ¿Determine si son iguales? ¿cuál de ellos es
	//		elmayor? y ¿cuál es el segundo mayor?
	Escribir "Dados tres números enteros positivos A, B y C, ¿Determine si son iguales? ¿cuál de ellos es elmayor? y ¿cuál es el segundo mayor?"
	// Entrada: tres números enteros positivos A, B y C
    // Salida: si los números son iguales, el mayor y el segundo mayor
	
    Definir A, B, C Como Entero
    Definir Nmayor, segundoMayor Como Entero
	
    Escribir "Ingrese el número A: "
    Leer A
	
    Escribir "Ingrese el número B: "
    Leer B
	
    Escribir "Ingrese el número C: "
    Leer C
	Limpiar Pantalla
	
    Si A = B y B = C Entonces
        Escribir "Los números son iguales."
    Sino
        Si A >= B y A >= C Entonces
			//Se va guardando el mayor de todos
            Nmayor <- A
			//Se van guardando quien es el segundo mayor
            Si B >= C Entonces
                segundoMayor <- B
            Sino
                segundoMayor <- C
            Fin Si
        Sino Si B >= A y B >= C Entonces
				//Se va guardando el mayor de todos
				Nmayor <- B
				//Se van guardando quien es el segundo mayor
				Si A >= C Entonces
					segundoMayor <- A
				Sino
					segundoMayor <- C
				Fin Si
			Sino
				//Se va guardando el mayor de todos
				Nmayor <- C
				//Se van guardando quien es el segundo mayor
				Si A >= B Entonces
					segundoMayor <- A
				Sino
					segundoMayor <- B
				Fin Si
			Fin Si
		Fin Si
	FinSi
	Escribir "El número mayor es: ", Nmayor
	Escribir "El segundo mayor es: ", segundoMayor
FinFuncion

Funcion EjercicioC5()
	Limpiar Pantalla
	Escribir "En un estacionamiento el monto a pagar se calcula multiplicando el número de horas que"
	Escribir"permaneció el automóvil dentro del estacionamiento por $1.5 la hora.La fracion en"
	Escribir"minutos de (1- 29 minutos) se cobra $0.5. Pasado de 30 minutos se cobra el valor de la hora"
	Escribir"Ahora se desea que usted elabore un algoritmo que a partir de la hora de entraday la "
	Escribir"hora de salida de un vehículo (las mismas corresponden a un mismo día) calcule el monto a pagar por el dueño del vehículo."
	Escribir"La entrada vendrá dada por dos enteros positivos el primero representa las horas y el segundo los minutos"
	Definir H_Entrada, M_Entrada, Hora_Salida, M_Salida, dMin, mPagar, hC Como real
	Definir tMinEntra, tMinSal  Como Real
	tMinEntra =0; tMinSal =0
	Escribir "Ingrese la Hora de entrada: "
	Leer H_Entrada
	Escribir "Ingrese los Minutos de entrada: "
	Leer M_Entrada
	Escribir "Ingrese la Hora de salida: "
	Leer Hora_Salida
	Escribir "Ingrese los Minutos de salida: "
	Leer M_Salida
	
	// Se calculan los datos ingresados 
	tMinEntra = H_Entrada * 60 + M_Entrada
	tMinSal = Hora_Salida * 60 + M_Salida
	dMin = tMinSal - tMinEntra
	
	// se van calculando  mediante el tiempo que esta estacionado 
	Si dMin <= 29 Entonces
		mPagar = 0.5
	Sino 
		Si dMin <= 60 Entonces
			mPagar = 1.5
		Sino
			hC = dMin / 60
			mPagar = hC * 1.5
		Fin Si
	FinSi
	//Y al final se presenta el monto que tendra que pagar por el tiempo que estuvo estacionado
	Escribir "El monto a pagar es: $", mPagar
FinFuncion



Funcion EjercicioC6
	Limpiar Pantalla
	Escribir"El IMC resulta de la división de la masa del individuo (en kilogramos) entre el cuadrado de"
	Escribir"la estatura (en metros). El índice de masa corporal es un indicadordel peso de una"
	Escribir"persona en relación con su altura."
	Escribir"Clasificación del IMC de acuerdo con la OMS de la ONU:"
	Escribir"a. Menor a 16: Criterio de ingreso."
	Escribir"b. 16 a 16.9: infra peso."
	Escribir"c.17 a 18.4: bajo peso."
	Escribir"d. 18.5 a 24.9: peso normal."
	Escribir"e. 25 a 29.9: sobrepeso."
	Escribir"f. 30 a 34.9: obesidad pre-mórbida."
	Escribir"g. 40 a 45: obesidad mórbida."
	Escribir"h. Mayor a 45: obesidad híper-mórbida"
	definir pesolb,estaturacm Como Entero
	Definir categoria Como Caracter
	Definir imc,pesokg,estaturame Como Real
	
	Escribir "Ingrese el peso en libras:"
	leer pesolb
	Escribir "Ingrese la estatura en centímetros:"
	leer estaturacm
	pesokg <- pesolb * 0.453592
	estaturame <- estaturacm / 100
	//Se calcula el imc el cual es <- pesokg/(estaturame*estaturame)
	imc <- pesokg / (estaturame * estaturame)
	categoria=""
	//Depende del imc sacado como resultado se verificara en que peso esta
	si imc<16 Entonces
		categoria="Criterio de ingreso"
	SiNo
		si imc>=16 y imc<=16.9 Entonces
			categoria="Infra peso"
		SiNo
			si imc >= 17 y imc <= 18.4 Entonces
				categoria="Bajo peso"
			SiNo
				si imc >= 18.5 y imc <= 24.9 Entonces
					categoria="Peso normal"
				SiNo
					si imc >= 25 y imc <= 29.9 Entonces
						categoria="Sobrepeso"
					SiNo
						si imc >= 30 y imc <= 34.9 Entonces
							categoria="Obesidad pre-mórbida"
						SiNo
							si imc >= 35 y imc <= 45 Entonces
								categoria="Obesidad mórbida"
							SiNo
								
								categoria="Obesidad híper-mórbida"
							FinSi
						FinSi
					finsi
				FinSi
			FinSi
		FinSi
	finsi
	//Se presenta al final el valor del imc sacado, el peso en kg y la categoria que pertenece
	Escribir "Peso en kilogramos: ", pesokg
	Escribir "Valor de IMC: ", imc
	Escribir "Categoría: ", categoria

FinFuncion

Funcion EjercicioC7()
	Limpiar Pantalla
	Escribir "Ejercicio 7. Escriba un algoritmo que reciba una fecha (día y mes) correspondiente al año 2014 e imprima por pantalla el número de días que han pasado desde el 1 deEnero de 2014 hasta la fecha dada."
	Definir dia, mes, dPasados Como Entero
	Escribir "Ingrese el día:"
	Leer dia
	Escribir "Ingrese el mes:"
	Leer mes
	dPasados <- 0
	//Se verifica con un si el dia que se ingresa y el mes y se van sumando al resultado que se mostrara al final 
	Si mes > 1 Entonces
		dPasados = dPasados + 31 
		Si mes > 2 Entonces
			dPasados = dPasados + 28 
			Si mes > 3 Entonces
				dPasados = dPasados + 31 
				Si mes > 4 Entonces
					dPasados = dPasados + 30  
					Si mes > 5 Entonces
						dPasados = dPasados + 31 
						Si mes > 6 Entonces
							dPasados = dPasados + 30  
							Si mes > 7 Entonces
								dPasados = dPasados + 31  
								Si mes > 8 Entonces
									dPasados = dPasados + 31  
									Si mes > 9 Entonces
										dPasados = dPasados + 30  
										Si mes > 10 Entonces
											dPasados = dPasados + 31  
											Si mes > 11 Entonces
												dPasados = dPasados + 30  
											Fin Si
										Fin Si
									Fin Si
								Fin Si
							Fin Si
						Fin Si
					Fin Si
				Fin Si
			Fin Si
		Fin Si
	Fin Si
	
	dPasados = dPasados + dia - 1
	
	Escribir "El número de días pasados desde el 1 de enero de 2014 es: ", dPasados
FinFuncion



Funcion EjercicioC8()
	Definir num Como Caracter
	Limpiar Pantalla
	Escribir "Solicitar un número entre el 1 y el 12 e imprimir el mes correspondiente a dicho número"
	Escribir "Ingrese un numero del 1 - 12"
	num <- "";
	leer num
	//Segun el numero ingresado se va a tomar para verificar en cual mes corresponde
	Segun num Hacer
		"1":
			Escribir "Enero"
			
		"2":
			Escribir "Febrero"
			
		"3":
			Escribir "Marzo"
			
		"4":
			Escribir "Abril"
			
		"5":
			Escribir "Mayo"
			
		"6":
			Escribir "Junio"
			
		"7":
			Escribir "Julio"
			
		"8":
			Escribir "Agosto"
			
		"9":
			Escribir "Septiembre"
			
		"10":
			Escribir "Octubre"
			
		"11":
			Escribir "Noviembre"
			
		"12":
			Escribir "Diciembre"
			
		De Otro Modo:
			Escribir "No existe ese mes"
	Fin Segun
FinFuncion

Funcion EjercicioC9()
	Limpiar Pantalla
	//En un almacén se hace un 20% de descuento a los clientes cuya compra supere los $1000,
	//se desea que realice un algoritmo el cual tome por entrada el monto apagar por el cliente
	//	y arroje como salida el monto aplicando el descuento de ser necesario.
	//entrada:
	//definir descuentoC, compra, total Como Real;
	//escribir "digite cuanto es el valor a pagar";
	//leer compra ;
	//proceso
	//si compra > 1000 Entonces
	//	descuentoC <- compra * 0.2
	//	total <- compra - descuentoC;
	//	escribir "el valor a pagar con el descuento es:",total;
	//SiNo
	//escribir "el valor a pagar sin el descuento es:",compra;
	//FinSi
	Definir compra,descuento,precio_D Como Real
	Escribir "En un almacén se hace un 20% de descuento a los clientes cuya compra supere los $1000, " Sin Saltar
	Escribir"se desea que realice un algoritmo el cual tome por entrada el monto apagar por el cliente "Sin Saltar
	Escribir"y arroje como salida el monto aplicando el descuento de ser necesario."
	
	Escribir "Ingrese el monto a pagar"
	Leer compra
	
	si compra >1000 Entonces
		descuento <- compra * 0.2
		precio_D <- compra - descuento
		Escribir "El precio con un descuento del 20% ya que supero los 1000 es de : ", precio_D;
	SiNo
		Escribir "El precio es de : ", compra;
	FinSi
	
FinFuncion

Funcion EjercicioC10 ()
	Limpiar Pantalla
	//Ejercicio 10
	//Dado dos números y un operador matemático(+,-,*,/,mod,div) realizar la suma, resta,
	//multiplicación, división, resto y división entera(div) de los dos números según el operador
	//ingresado.
	//entrada
	//definir num1, num2, resultado como reales 
	//definir operadores Como Caracter
	//Escribir "digite dos numeros ";
	//leer num1, num2 ;
	//escribir "escribir un caracter (+,-,*,/,mod,div)" 
	//leer operadores;
	//proceso
	//Si operadores = "+" Entonces
	//	resultado<- num1 + num2 ;
	//SiNo
	//	si operadores = "-" Entonces
	//		resultado<-  num1 - num2; 
	//SiNo
	//si operadores = "*" Entonces
	//		resultado<-  num1 * num2 ;
	//	SiNo
	//	si operadores = "/" Entonces
	//		resultado<-  num1/num2 ;
	//	SiNo
	//	si operadores = "div" Entonces
	//		resultado <- trunc (num1 / num2);
	//	SiNo
	//	si operadores = "mod" Entonces
	//		resultado <- num1 mod num2;
	//	FinSi
	//salida
	//escribir "el resultado es: ",resultado;
	definir num1, num2, resultado como reales 
	definir operadores Como Caracter
	Escribir "Dado dos números y un operador matemático(+,-,*,/,mod,div) realizar la suma, resta," Sin Saltar
	Escribir"multiplicación, división, resto y división entera(div) de los dos números según el operador" Sin Saltar
	Escribir"ingresado."
	Escribir "digite dos numeros ";
	leer num1, num2 ;
	escribir "escribir un caracter (+,-,*,/,mod,div)" 
	leer operadores;
	
	Si operadores = "+" Entonces
		resultado<- num1 + num2 ;
	SiNo
		si operadores = "-" Entonces
			resultado<-  num1 - num2; 
		SiNo
			si operadores = "*" Entonces
				resultado<-  num1 * num2 ;
			SiNo
				si operadores = "/" Entonces
					resultado<-  num1/num2 ;
				SiNo
					si operadores = "div" Entonces
						resultado <- trunc (num1 / num2);
					SiNo
						si operadores = "mod" Entonces
							resultado <- num1 mod num2;
							
						FinSi
					finSi	
				finSi		
			finSi
			
		FinSi
	FinSi
	escribir "el resultado es: ",resultado;

	
FinFuncion


//submenu iterativas
Funcion EjercicioI1()
	Limpiar Pantalla
	Escribir "Dado un número entero N, calcular e informar al usuario cuántos dígitos tiene dicho número."
	Escribir "Ingrese un numero"
	Leer num
	//Al ingresar el numero lo unico que se hace es sacar la longitud y se pone la cantidad de digitos que tiene
	long <- longitud(num)
	escribir "El numero ingresado ", num , " tiene ", long ," digitos";
	
FinFuncion

funcion EjercicioI2()
	Limpiar Pantalla
	Definir num,inversa Como Caracter
	Definir a,b,i Como Entero
	Escribir "Dado un número entero cuya cantidad de dígitos es igual a 5, determine si escapicúa"
	Escribir "Ingrese el numero de 5 digitos"
	leer num
	inversa="";
	//Se saca la longitus del numero
	b=Longitud(num)
	//Se hace un proceso repetitivo el cual ira verificando numero por numero desde la posicion 0 hasta la -1 (que es el final)
	para i=b Hasta 0 Con Paso -1 Hacer
		inversa=inversa+Subcadena(num,i,i)
	FinPara
	
	Escribir inversa
	//Ssi el numero inverso es igual al numero ingresado entonces el numero es escapicua
	si num=inversa Entonces
		Escribir "El numero: ",num," es escapicua"
	SiNo
		Escribir "El numero: ",num," no es escapicua"
	FinSi
FinFuncion

Funcion EjercicioI3()
	
	Limpiar Pantalla

	Escribir "Ejercicio 3. Escribir un algoritmo que presente los divisores de un numero"
	Escribir "Ingrese un numero "
	Leer num;
	
	Limpiar Pantalla
	
	Escribir "Los divisores de ",num,":";
	//Hacemos un ciclo repetitivo en el cual solo vamos a sacar los divisores de dicho numero
	Para divisores <- 1 Hasta num Con Paso 1 Hacer
		
		si num mod divisores = 0 Entonces
			Escribir divisores
		FinSi
		
	Fin Para
	
FinFuncion

Funcion EjercicioI4()
	Limpiar Pantalla
	//Hacemos un cliclo repetitivo en el cual vamos a presentar la suma de los divisores de dicho numero
	//	Para divisores <- 1 Hasta num Con Paso 1 Hacer
	//		
	//		si num mod divisores = 0 Entonces
	//			suma <- suma + divisores
	//		FinSi
	Escribir "Ejercicio 4 Escribir un algoritmo que presente la suma de los divisores de un numero"
	Escribir "Ingrese un numero "
	Leer num;
	
	Limpiar Pantalla
	
	Para divisores <- 1 Hasta num Con Paso 1 Hacer
		
		si num mod divisores = 0 Entonces
			suma <- suma + divisores
		FinSi
	Fin Para
	Escribir "La suma de los divisores de ", num, " es de : ", suma;
	
FinFuncion


Funcion EjercicioI5()
	Limpiar Pantalla

	Escribir "Escribir un algoritmo que presente la cantidad de los divisores de un numero"
	Escribir "Ingrese un numero"
	Leer num;
	Limpiar Pantalla
	Escribir "Los cantidad de divisores de ",num,":";
	//Se hace un ciclo repetitivo en el cual se van sacando los divisores
	Para divisores <- 1 Hasta num Con Paso 1 Hacer
		
		si num mod divisores = 0 Entonces
			//Agregamos un contador para sacar la cantidad de divisores que tiene dicho numero ingresado
			c <- c + 1
		FinSi
		
	Fin Para
	
	Escribir c
	
FinFuncion

Funcion EjercicioI6()
	Limpiar Pantalla

	Definir suma,num,divisores Como Entero
	escribir "Escribir un algoritmo que indique si un número es perfecto"
	escribir"Nota: un número es perfecto cuando la suma de los divisores del número incluido el 1 y " Sin Saltar
	escribir"excluido el propio número es igual al numero"
	escribir"Ejemplo: numero=6: los divisores del 6 son: 1+2+3=6"
	
	Escribir "Ingrese el numero"
	Leer num
	
	suma <- 0
	
	Limpiar Pantalla
	//Se sacan los divisores y se los van sumando
	Para divisores <- 1 Hasta num-1 Con Paso 1 Hacer
		
		si num mod divisores = 0 Entonces
			suma <- suma + divisores
		FinSi
	Fin Para
	//Si la suma de todos sus divisores es igual al numero ingesado entonces el numero es perfecto
	si suma == num Entonces
		Escribir "El numero ", num, " es perfecto"
	SiNo
		Escribir "El numero ", num, " no es perfecto"
	FinSi
	
FinFuncion


Funcion EjercicioI7()
	Limpiar Pantalla
	//Nota: Un número primo es aquel que solo es divisible por 1(uno) y por el mismo.
	//entrada
    //definir Num Como entero;
	//escribir "digite un numero";
	//leer Num;
	//proceso
	//contador = 0;
	
	//para i<-1 Hasta Num con paso 1 Hacer
    //	si Num mod i = 0 Entonces
	//contador <- contador + 1;
	//FinSi
	//FinPara
	//si contador = 2 Entonces
	//	escribir "es un numero primo:",N;
    //SiNo
	//Escribir "no es un numero primo:",N;
    //FinS
	Definir i,n,c Como Entero
	Escribir "Dado un número N determinar si es un número primo."
	escribir "Nota: Un número primo es aquel que solo es divisible por 1(uno) y por el mismo"
	definir Num Como entero;
	escribir "digite un numero";
	leer Num;
	
	contador = 0;
	
	para i<-1 Hasta Num con paso 1 Hacer
		si Num mod i = 0 Entonces
			contador <- contador + 1;
		FinSi
	FinPara
	si contador = 2 Entonces
		escribir "es un numero primo:",N;
	SiNo
		Escribir "no es un numero primo:",N;
	FinSi
	
FinFuncion
Funcion EjercicioI8()
	Limpiar Pantalla
	//Construya un programa que dado un valor entero N, haga el cálculo de la función factorial
	//utilizando estructuras iterativas
	//entrada:
	//definir N, factorial Como Entero;
	//escribir "digite un valor"
	//leer N;
	//factorial <- 1;
	//proceso:
	//para i<- 1 hasta N con paso 1 hacer 
	//factorial <- N * i;
	//FinPara
	//salida
    //Escribir "el factorial es:",factorial;
	definir N, factorial Como Entero;
	Escribir "Construya un programa que dado un valor entero N, haga el cálculo de la función factorial utilizando estructuras iterativas."
	escribir "digite un valor"
	leer N;
	
	factorial <- 1;
	
	para i<- 1 hasta N con paso 1 hacer 
		factorial <- N * i;
	FinPara
	Escribir "el factorial es:",factorial;
FinFuncion

Funcion EjercicioI9()
	Limpiar Pantalla
	Definir contra Como Cadena
	Definir longContra Como Entero
	
	Escribir "Contraseña de 10 digitos"
	//Se inicia con un ciclo repetitivo
	Mientras longContra < 10 Hacer
		Escribir "Ingrese una contraseña:"
		Leer contra
		//Se saca la longitud de la contraseña ingresada
		longContra = Longitud(contra)
		//si tiene menos de 10 digitos se le pedira que ingrese otra nuevamente
		Si longContra < 10 Entonces
			Escribir "La contraseña es minimo de 10 digitos"
		Fin Si
	Fin Mientras
	//El ciclo termina cuando se ingresa la contraseña con 10 digitos
	Escribir "Contraseña Aceptada"

FinFuncion

Funcion EjercicioI10()
	Limpiar Pantalla
//	Mientras num<> 0 Hacer
//		si num > nmayor Entonces
//			nmayor = num
//		FinSi
//		si num< nmenor Entonces
//			nmenor=num
//		FinSi
//		Escribir "Ingrese un número (0 para terminar):"
//		leer num
	Definir num,nmayor,nmenor Como Entero
	Escribir "Dada una secuencia de números terminada en cero (0), elaborar un algoritmo que" 
	Escribir "informe al usuario qué valor tiene el número mayor y qué valor tiene el número menor, sin contar el cero (0)."
	Escribir ""
	Escribir "Ingrese un número (0 para terminar):"
	leer num
	nmayor = num
	nmenor = num
	Mientras num<> 0 Hacer
		si num > nmayor Entonces
			nmayor = num
		FinSi
		si num< nmenor Entonces
			nmenor=num
		FinSi
		Escribir "Ingrese un número (0 para terminar):"
		leer num
	FinMientras
	Escribir "El número mayor es: ", nmayor
	Escribir "El número menor es: ", nmenor

FinFuncion

Funcion EjercicioI11()
	Limpiar Pantalla
	//Se tiene una secuencia de enteros terminada en cero, que corresponde a la edad, peso y
	//estatura de una muestra de hombres y mujeres mayores de 18 años. Con base en dicha
	//secuencia se desea realizar un estudio a fin de conocer:
	//	Edad promedio de todas las personas en la muestra.
	//	Peso promedio de todas las personas en la muestra.
	//	Estatura promedio de todas las personas en la muestra.
	//	Cuántas personas hay con edad entre los 18 y 25 años.
	//	Cuántas personas son mayores a 36 años.
	//	Cuál es el promedio de peso de las personas con edades entre 18 y 35 años.
	Definir edad, peso, estatura como reales;
	Definir suma_edad, suma_peso, suma_estatura como reales;
	Definir totalPersonas como entero;
	Definir contador18_25, contadormayor_36, sumapeso18_35 como reales;
	Definir promedio_edad, promedio_peso, promedio_estatura, promedio_peso18_35 como reales;
	
	totalPersonas = 0;
	contador18_25 = 0;
	contadormayor_36 = 0;
	sumapeso18_35 = 0;
	suma_edad = 0;
	suma_peso = 0;
	suma_estatura = 0;
	
	Escribir "Digite la edad (0 para terminar):";
	Leer edad;
	
	Mientras edad <> 0 hacer
		Escribir "Digite el peso:";
		Leer peso;
		
		Escribir "Ingrese la estatura:";
		Leer estatura;
		
		// Cuántas personas hay con edad entre los 18 y 25 años.
		Si edad >= 18 y edad <= 25 entonces
			contador18_25 = contador18_25 + 1;
		Fin Si
		
		// Cuántas personas son mayores a 36 años.
		Si edad > 36 entonces
			contadormayor_36 = contadormayor_36 + 1;
		Fin Si
		
		// Cuál es el promedio de peso de las personas con edades entre 18 y 35 años.
		Si edad >= 18 y edad <= 35 entonces
			sumapeso18_35 = sumapeso18_35 + peso;
		Fin Si
		
		// Edad promedio de todas las personas en la muestra.
		// Peso promedio de todas las personas en la muestra.
		// Estatura promedio de todas las personas en la muestra.
		totalPersonas = totalPersonas + 1;
		suma_edad = suma_edad + edad;
		suma_peso = suma_peso + peso;
		suma_estatura = suma_estatura + estatura;
		
		Escribir "Digite la edad (0 para terminar):";
		Leer edad;
	Fin Mientras
	
	// Calcular el promedio
	promedio_edad = suma_edad / totalPersonas;
	promedio_peso = suma_peso / totalPersonas;
	promedio_estatura = suma_estatura / totalPersonas;
	
	// Comprobar si existen personas con edades entre 18 y 35 para evitar la división por cero.
	Si contador18_25 > 0 entonces
		promedio_peso18_35 = sumapeso18_35 / contador18_25;
	Sino
		promedio_peso18_35 = 0;
	Fin Si
	
	Escribir "Edad promedio: ", promedio_edad;
	Escribir "Peso promedio: ", promedio_peso;
	Escribir "Estatura promedio: ", promedio_estatura;
	Escribir "Cantidad de personas entre 18 y 25 años: ", contador18_25;
	Escribir "Cantidad de personas mayores a 36 años: ", contadormayor_36;
	Escribir "Promedio de peso de entre 18 y 35 años: ", promedio_peso18_35
FinFuncion

Funcion EjercicioI12()
	Limpiar Pantalla
	//Se crea un Algoritmo con dos ciclos repetitivo en el cual se van haciendo las tablas de multiplicar 
	Definir contuno,contdos,resultado Como Entero
	Escribir "Construye un algoritmo que calcule e imprima la tabla de multiplicar, desde la tabla del 1 hasta la del 10."
	Para contuno = 1 hasta 10 hacer
		//el contador uno va a ir aumentando hasta el 10 y se va a ir creando la tabla del 1 al 10
		Escribir "Tabla de multiplicar del ", contuno, ":"
		Para contdos = 1 hasta 10 hacer
			resultado = contuno * contdos
			Escribir contuno, " x ", contdos " = ", resultado
		FinPara
		Escribir ""
	FinPara
FinFuncion


Funcion EjercicioI13()
	
	Limpiar Pantalla

	//	Ejercicio 13. Escribir un algoritmo que multiplique dos números por medio de sumas sucesivas.
	Definir num1,num2,sumaP,x Como Entero
	Escribir "Ingrese 2 numeros"
	Leer num1,num2
	Limpiar Pantalla
	sumaP = 0
	para i <- 1 Hasta num1 con paso 1 Hacer
		sumaP = sumaP + num2
	FinPara
	
	Escribir "El resultado es : ", sumaP
FinFuncion

Funcion EjercicioI14()
//	Escribir "Ingrese números"
//	Leer num
//	
//	si (num > 0) Entonces
//		total <- num
//		c <- 1
//	FinSi
//	
//	Mientras num <> 0 Hacer
//		Escribir "Ingrese números"
//		Leer num
//		
//		si (num > 0) Entonces
//			total <- total + num
//			c <- c + 1
//		FinSi
	Limpiar Pantalla
	Escribir "Dados N número positivos (N>1) calcular el promedio de esta serie. Considere que la serie termina al leer un 0."
	i <- 1
	Escribir "Ingrese números"
	Leer num
	
	si (num > 0) Entonces
		total <- num
		c <- 1
	FinSi
	
	Mientras num <> 0 Hacer
		Escribir "Ingrese números"
		Leer num
		
		si (num > 0) Entonces
			total <- total + num
			c <- c + 1
		FinSi
		
	FinMientras
	
	promedio <- total / c
	
	Escribir "El promedio es de:", promedio
FinFuncion


Funcion EjercicioI15()
//	Escribir "Ingrese el primer numero:"
//	Leer num1
//	
//	Escribir "Ingrese el segundo numero:"
//	Leer num2
//	
//	cociente <- 0
//	residuo <- num1
//	
//	Mientras residuo >= num2 Hacer
//		residuo <- residuo - num2
//		cociente <- cociente + 1
//	Fin Mientras
	Limpiar Pantalla
	Escribir "Escribir un algoritmo que divida dos números por medio de restas sucesivas"
	Definir dividendo, divisor, cociente, residuo como Entero
	
	Escribir "Ingrese el primer numero:"
	Leer num1
	
	Escribir "Ingrese el segundo numero:"
	Leer num2
	
	cociente <- 0
	residuo <- num1
	
	Mientras residuo >= num2 Hacer
		residuo <- residuo - num2
		cociente <- cociente + 1
	Fin Mientras
	
	Escribir "El cociente es:", cociente
	Escribir "El residuo es:", residuo

	
FinFuncion


// Algoritmo principal del proyecto
Algoritmo Proyecto
	Definir menuPrincipal,menuS,menuC,menuI,titulo,titulo2,opc,opcn,apcc,apca Como Caracter
	Definir pos,lim Como Entero
	Dimension menuPrincipal[4],menuS[11],menuC[11],menuI[16]
	// Arreglo menu principal
	menuPrincipal[0] = "  1) Estructuras Selectivas"
	menuPrincipal[1] = "  2 Estructuras Condicionales"
	menuPrincipal[2] = "  3) Estructuras Iterativas"
	menuPrincipal[3] = "  4)Salir"
	Limpiar Pantalla
	
	// Submenu Selectivas
	
	menuS[0] = "	1) Convierta a expresión matemática,"
	menuS[1] = "  2) Dados dos (2) números calcule la suma, resta, multiplicación, división y módulo."
	menuS[2] = "  3) Dados tres (3) números, Hacer una aplicación que calcule la resolvente"
	menuS[3] = "  4) Dados dos (2) lados de un triángulo en cm, calcular la hipotenusa del mismo."
	menuS[4] = "  5) Dado un (1) número, imprimir 0 si es par y 1 si es impar."
	menuS[5] = "  6) Dado un (1) número binario de cuatro (4) dígitos imprimir su valor"
	menuS[6] = "  7) Dado un (1) número de cuatro (4) dígitos imprimirlo por separado en unidades,decenas, centenas y unidades de mil."
	menuS[7] = "  8) Dado un carácter indicar si es un digito o una consonante o un carácter especial."
	menuS[8] = "  9) Dado dos caracteres indicar si el primer carácter es igual, mayor o menor que el segundo"
	menuS[9] = "  10) Dada una frase cualquiera presentarla en mayúscula y minuscula"
	menuS[10]= "  11) Salir"
	
	//Submenu Condicionales
	
	menuC[0] = "  1) Todos los años que se dividen exactamente entre 400"
	menuC[1] = "  2) Dado un número entero cuya cantidad de dígitos es igual a 5, determine si escapicúa."
	menuC[2] = "  3) Para un valor entero positivo que representa una cantidad en segundos, indicar su equivalente en minutos, horas y días."
	menuC[3] = "  4) Dados tres números enteros positivos A, B y C, ¿Determine si son iguales? ¿cuál de ellos es el mayor? y ¿cuál es el segundo mayor?"
	menuC[4] = "  5) En un estacionamiento el monto a pagar se calcula multiplicando el número dehoras que permaneció el automóvil dentro del estacionamiento"
	menuC[5] = "  6) El IMC resulta de la división de la masa del individuo (en kilogramos) entre el cuadrado de	la estatura (en metros)."
	menuC[6] = "  7) Escriba un algoritmo que reciba una fecha (día y mes) correspondiente al año 2014"
	menuC[7] = "  8) Solicitar un número entre el 1 y el 12 e imprimir el mes correspondiente a dicho número."
	menuC[8] = "  9) En un almacén se hace un 20% de descuento a los clientes cuya compra supere los $100a"
	menuC[9] = "  10) Dado dos números y un operador matemático(+,-,*,/,mod,div)"
	menuC[10] = " 11) Salir"
	
	// Iteradores
	
	menuI[0]= "1) Dado un número entero N, calcular e informar al usuario cuántos dígitos tiene dicho número."
	menuI[1]= "2) Dado un número, determine si es capicúa."
	menuI[2]= "3) Escribir un algoritmo que presente los divisores de un numero"
	menuI[3]= "4) Escribir un algoritmo que presente la suma de los divisores de un numero"
	menuI[4]= "5) Escribir un algoritmo que presente la cantidad de los divisores de un numero"
	menuI[5]= "6) Escribir un algoritmo que indique si un número es perfecto"
	menuI[6]= "7) Dado un número N determinar si es un número primo."
	menuI[7]= "8) Construya un programa que dado un valor entero N, haga el cálculo de la función factorial utilizando estructuras iterativas."
	menuI[8]= "9) Dado un número entero N que representa una contraseña"
	menuI[9]= "10) Dada una secuencia de números terminada en cero (0)"
	menuI[10]= "11) Se tiene una secuencia de enteros terminada en cero, que corresponde a la edad, peso y estatura de una muestra de hombres y mujeres mayores de 18 años."
	menuI[11]= "12) Construye un algoritmo que calcule e imprima la tabla de multiplicar, desde la tabla del 1 hasta la del 10."
	menuI[12]= "13) Escribir un algoritmo que multiplique dos números por medio de sumas sucesivas."
	menuI[13]= "14) Dados N número positivos (N>1) calcular el promedio de esta serie. Considere que la serie termina al leer un 0."
	menuI[14]= "15) Escribir un algoritmo que divida dos números por medio de restas sucesivas"
	menuI[15]= "16) Salir"
	opc=""
	Limpiar Pantalla
    Mientras opc <> "4" Hacer
		opc = presentarMenu("Menu Principal",menuPrincipal,4)
		Segun opc Hacer
			"1":
				opcn=""
				Mientras opcn <> "11" Hacer         
					opcn=presentarMenu("Menu Selectivas ",menuS,11)
					Segun opcn Hacer
						"1":
							Escribir "	Siguiendo la prioridad de operadores, convierta a expresión matemática"
							Ejercicio1()
							Esperar 5 Segundos
						"2":
							Escribir "Dados dos (2) números calcule la suma, resta, multiplicación, división y módulo."
							Ejercicio2()
							Esperar 5 Segundos
						"3":
							Escribir "Dados tres (3) números, Hacer una aplicación que calcule la resolvente"
							Ejercicio3()
							Esperar 5 Segundos
						"4":
							Escribir "Dados dos (2) lados de un triángulo en cm, calcular la hipotenusa del mismo."
							Ejercicio4()
							Esperar 5 Segundos
						"5":
							Escribir "Dado un (1) número, imprimir 0 si es par y 1 si es impar."
							Ejercicio5()
							Esperar 5 Segundos
						"6":
							Escribir "Dado un (1) número binario de cuatro (4) dígitos imprimir su valor"
							Ejercicio6()
							Esperar 5 Segundos
						"7":
							Escribir "Dado un (1) número de cuatro (4) dígitos imprimirlo por separado en unidades,decenas, centenas y unidades de mil."
							Ejercicio7()
							Esperar 5 Segundos
						"8":
							Escribir "Dado un carácter indicar si es un digito o una consonante o un carácter especial."
							Ejercicio8()
							Esperar 5 Segundos
						"9":
							Escribir "Dado dos caracteres indicar si el primer carácter es igual, mayor o menor que el segundo"
							Ejercicio9()
							Esperar 5 Segundos
						"10":
							Escribir "Dada una frase cualquiera presentarla en mayúscula y minuscula"
							Ejercicio10()
							Esperar 5 Segundos
						"11":
							Escribir "Regresando al Menu Principal"
							Esperar 3 Segundos
						De Otro Modo:
							Escribir "Opcion invalida..."
							Esperar 3 Segundos
					Fin Segun
				FinMientras
			"2":
				opcn=""
				Mientras opcn <> "11" Hacer         
					opcn=presentarMenu("Menu Condicionales",menuC,11)
					Segun opcn Hacer
						"1":
							Escribir "Todos los años que se dividen exactamente entre 400"
							EjercicioC1()
							Esperar 5 Segundos
						"2":
							Escribir "Dado un número entero cuya cantidad de dígitos es igual a 5, determine si escapicúa."
							EjercicioC2()
							Esperar 5 Segundos
						"3":
							Escribir "Para un valor entero positivo que representa una cantidad en segundos, indicar su equivalente en minutos, horas y días."
							EjercicioC3()
							Esperar 5 Segundos
						"4":
							Escribir "Dados tres números enteros positivos A, B y C, ¿Determine si son iguales? ¿cuál de ellos es elmayor? y ¿cuál es el segundo mayor?"
							EjercicioC4()
							Esperar 5 Segundos
						"5":
							Escribir "En un estacionamiento el monto a pagar se calcula multiplicando el número de horas que permaneció el automóvil dentro del estacionamiento "
							EjercicioC5()
							Esperar 5 Segundos
						"6":
							Escribir "El IMC resulta de la división de la masa del individuo (en kilogramos) entre el cuadrado de la estatura (en metros)."
							EjercicioC6()
							Esperar 5 Segundos
						"7":
							Escribir "Escriba un algoritmo que reciba una fecha (día y mes) correspondiente al año2014"
							EjercicioC7()
							Esperar 5 Segundos
						"8":
							Escribir "Solicitar un número entre el 1 y el 12 e imprimir el mes correspondiente a dicho número"
							EjercicioC8()
							Esperar 5 Segundos
						"9":
							Escribir "En un almacén se hace un 20% de descuento a los clientes cuya compra supere los $1000"
							EjercicioC9()
							Esperar 5 Segundos
						"10":
							Escribir "Dado dos números y un operador matemático(+,-,*,/,mod,div)"
							EjercicioC10()
							Esperar 5 Segundos
						"11":
							Escribir "Regresando al Menu Principal"
							Esperar 3 Segundos
						De Otro Modo:
							Escribir "Opcion invalida..."
							Esperar 3 Segundos
					FinSegun
				FinMientras
			"3":
				opcn=""
				Mientras opcn <> "16" Hacer         
					opcn=presentarMenu("Menu Iterativas ",menuI,16)
					Segun opcn Hacer
						"1":
							Escribir "Dado un número entero N, calcular e informar al usuario cuántos dígitos tiene dicho número."
							EjercicioI1()
							Esperar 6 Segundos
						"2":
							Escribir "Dado un número, determine si es capicúa."
							EjercicioI2()
							Esperar 6 Segundos
						"3":
							Escribir "Escribir un algoritmo que presente los divisores de un numero"
							EjercicioI3()
							Esperar 6 Segundos
						"4":
							Escribir "Escribir un algoritmo que presente la suma de los divisores de un numero"
							EjercicioI4()
							Esperar 4 Segundos
						"5":
							Escribir "Escribir un algoritmo que presente la cantidad de los divisores de un numero"
							EjercicioI5()
							Esperar 4 Segundos
						"6":
							Escribir "Escribir un algoritmo que indique si un número es perfecto"
							EjercicioI6()
							Esperar 6 Segundos
						"7":
							Escribir "Dado un número N determinar si es un número primo"
							EjercicioI7()
							Esperar 4 Segundos
						"8":
							Escribir "Construya un programa que dado un valor entero N, haga el cálculo de la función factorial utilizando estructuras iterativas."
							EjercicioI8()
							Esperar 4 Segundos
						"9":
							Escribir "Dado un número entero N que representa una contraseña"
							EjercicioI9()
							esperar 4 Segundos
						"10":
							Escribir "Dada una secuencia de números terminada en cero (0)"
							EjercicioI10()
							Esperar 4 Segundos
						"11":
							Escribir "Se tiene una secuencia de enteros terminada en cero, que corresponde a la edad, peso y estatura"
							EjercicioI11()
							Esperar 4 Segundos
						"12":
							Escribir "Construye un algoritmo que calcule e imprima la tabla de multiplicar, desde la tabla del 1 hasta la del 10"
							EjercicioI12()
							Esperar 4 Segundos
						"13":
							Escribir "Escribir un algoritmo que multiplique dos números por medio de sumas sucesivas."
							EjercicioI13()
							Esperar 4 Segundos
						"14":
							Escribir "Dados N número positivos (N>1) calcular el promedio de esta serie. Considere que la serie termina al leer un 0."
							EjercicioI14()
							Esperar 4 Segundos
						"15":
							Escribir "Dados N número positivos (N>1) calcular el promedio de esta serie. Considere que la serie termina al leer un 0."
							EjercicioI15()
							Esperar 4 Segundos
					FinSegun
				FinMientras
			"4":
				Escribir "Gracias por usar el Sistema"
				Esperar 3 Segundos
		Fin Segun
    Fin Mientras
FinAlgoritmo
