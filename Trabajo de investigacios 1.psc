Funcion opc=presentar_menu(opciones,lim,titulo)
	definir pos Como Entero;
	definir opc Como Caracter;
	Escribir titulo;
	Para pos<-0 Hasta lim-1 Con Paso 1 Hacer
		Escribir opciones[pos];
	Fin Para
	Escribir "Elija opcion[1..",lim,"]:" Sin Saltar;
	leer opc;
FinFuncion

//cantidad_decolas
//Determinar cuanto se debe pagar por cierta cantidad de colas,
//considerando que si son más de 23 colas, el costo por unidad
//es de $0,50 caso contrario el precio será 20% mas.
//Al costo resultante calcular el 12% del iva. Se pide presentar:
//cantidad comprada, el costo ´por unidad, el total sin iva
//el iva y el total a pagar.
//Entrada:cant_colas(leer),costo_unidad(leer),total_sinIva(leer), Totalpagar_ConIva(leer), totalPagar(leer)
//Proceso:si cant_colas > 23 Entonces
//costo_unidad <- 0.50
//SiNo
//costo_unidad <- 0.50 * 1.20
//salida:total a pagar
Funcion colas
	definir cantidad, costo, total, iva, pagototal Como Real;
	Escribir "ingrese la cantidad de colas";
	leer cantidad;
	costo<-0;
	pagototal<-0;
	si cantidad>=23 Entonces
		costo<-0.50;
	sino 
		costo<-0.50*1.20;
	FinSi
	total<-costo* cantidad;
	iva<-total*.12;
	pagototal<-total+iva;
	Escribir "El costo sin iva es $", total;
	Escribir "El costo por unidad es $", costo;
	Escribir "El total a pagar es $", pagototal;
FinFuncion


Funcion uva
	//tipo de uva a,b
	//tamano de uba 1, 2
	//tipo a tamanno 1==20 y tipo a tamano2==30 
	//tipo b tamano1== -30  y tipo b tamano2==50
	//ganacia
	definir tamano, ganacia, kilo Como Entero;
	definir tipo Como Caracter;
	tamano<-0;
	tipo<-'';
	kilo<-0;
	Escribir 'Ingrese el precio de kilo de uva';
	leer kilo;
	Escribir 'Ingrese el tipo de A O B';
	leer tipo;
	Escribir 'Ingrese el tamano entre 1 y 2';
	leer tamano;
	si tipo='A' y tamano=1 Entonces
		ganacia<- kilo+20;
	SiNo
		si tipo='A' y tamano=2 Entonces
			ganacia <-kilo +30;
		SiNo
			si tipo ='B' y tamano=1 Entonces
				ganacia<- kilo-30;
			SiNo
				si tipo= 'B' y tamano=2 Entonces
					ganancia<- kilo -50;
				FinSi
			FinSi
		FinSi
	FinSi
	Escribir 'La ganacia es de $', ganacia;
FinFuncion

//Dado dos números obtener el residuo sin el operador mod, %
Funcion residuo
	Definir divi, div , res como entero;
	Escribir "introduce el dividiendo" ;
	leer divi;
	Escribir "introduce el divisor";
	leer div;
	res <- divi;
	Mientras res >= div Hacer
		res <- res - div ;
	FinMientras
	Escribir "El residuo de la division es :", res;
FinFuncion

//El consultorio del Dr. Paez tiene como política cobrar la consulta con
//base en el número de cita, de la siguiente forma:
//Las tres primeras citas a $200.00 c/u.
//Las siguientes dos citas a $150.00 c/u.
//Las tres siguientes citas a $100.00 c/u.
//Las restantes a $50.00 c/u, mientras dure el tratamiento.
//Se requiere un algoritmo para determinar:
//Cuánto pagará el paciente por la cita.
//El monto de lo que ha pagado el paciente por el tratamiento.
//Para la solución de este problema se requiere saber qué número de cita se efectuará, con el cual se podrá determinar el costo que tendrá la consulta y cuánto se ha gastado en el tratamiento.
Funcion costocita
	Definir cita, costo, total, c Como Real;
	Escribir "Ingrese la cantidad de citas";
	leer cita;
	total<-0;
	c<-0;
	si cita>=1 y cita<=3 Entonces
		costo<-200;
		c<-costo;
	sino
		si cita>=4 y cita<=5 Entonces
			costo<-150;
			c<-costo;
		SiNo
			si cita>=6 y cita<=9 Entonces
				costo<-100;
				c<-costo;
			SiNo
				costo<-50;
				c<-costo;
			FinSi
		FinSi
	FinSi
	total<- cita*costo;
	Escribir "Costo de la cita ", cita, ": $", costo;
	Escribir "Monto total gastado en el tratamiento es: $", total;
FinFuncion

//Escribir un algoritmo que lea cuatro números y determine si el numero 1
//es la mitad del número 2; Y si el numero 3 es divisor del numero4.
Funcion ejer5num
	definir num1 ,num2 , num3 , num4 Como Entero ;
	Escribir "ingrese numero 1";
	leer num1;
	Escribir "ingrese numero2" ;
	leer num2;
	Escribir " ingrese numero3";
	leer num3;
	Escribir " ingrese numero4";
	leer num4;
	si num1 * 2 = num2 Entonces
		Escribir  num1, " si mitad del ", num2;
	SiNo
		Escribir  num1, " no es mitad de ", num2;
	FinSi
	si num3 mod num4 =0 Entonces
		Escribir num3, " si es divisible de ", num4 ;
	SiNo
		Escribir num3,  " no es disible entre ", num4;
	FinSi

FinFuncion

Funcion ejer6
	//declaramos variables 
	//entrada de datos
	definir tipo Como Entero;
	Definir aumento, credito, monto Como Real;
	Escribir "Ingrese el Tipo de tarjeta (1, 2 o 3)";
	leer tipo;
	Escribir "ingrese su credito actual";
	leer credito;
	aumento<-0;
	//proceso
	si tipo=1 Entonces
		aumento<-0.25;
	SiNo
		si tipo=2 Entonces
			aumento<-0.35;
		SiNo
			si tipo=3 Entonces
				aumento<-0.40;
			SiNo
				aumento<-0.50;
			FinSi
		FinSi
	FinSi
	monto<-credito*(1+aumento);
	monto2<- monto+20;
	//salida de datos
	Escribir "su tarjeta es tipo ", tipo;
	Escribir "Su nuevo monto es de $", monto2;
FinFuncion


//Escribir un algoritmo que lea cuatro números y determine si el numero 1 es divisor 
//del numero3 Y si el numero 2 es el doble del numero4.
funcion ejer7
	Definir num1  ,num2 , num3 , num4 Como Entero ;
	Escribir "ingrese numero 1";
	leer num1;
	Escribir "ingrese numero 2";
	leer num2;
	Escribir "ingrese numero 3";
	Leer num3;
	Escribir "ingrese numero 4";
	leer num4 ;
	si num1 mod num3 = 0 Entonces
		Escribir num1 , " este numero sera divisible para " , num3 ;
	SiNo
		Escribir "numero 1  no es divisible de numero 3 " ;
	FinSi
	si num2 * 2 = num4  Entonces
		Escribir num2, "es el doble de", num4;
	SiNo
		Escribir num2, "no es el doble de", num4;
	FinSi
FinFuncion

//El banco POO ha decidido aumentar el límite de crédito de las tarjetas de crédito
//de sus clientes, para esto considera que:
//Si su cliente tiene tarjeta tipo 1, el aumento será del $100 .
//Si tiene tipo 2 el aumento será del $200
//Si tiene tipo 3, el aumento será del $300
//Para cualquier otro tipo será del 500
//Realizar un algoritmo que ayude al banco a determinar el nuevo límite
//de crédito que tendrá una persona en su tarjeta considerando que
//después del aumento se tendrá que subir 10% adicionales a todas las tarjetas
Funcion ejer8
	definir tarjeta  como entero;
	definir p como real;
	p <- 0.10;
	escribir "cual es su tipo de tarjeta";
	leer tarjeta ;
	si tarjeta = 1 Entonces
		aumento <- 100 * 0.10;
		total <- 100 + aumento;
		escribir "el aumento sera:", total;
	SiNo
		si tarjeta = 2 entonces
			aumento <- 200 * 0.10;
			total <- 200 + aumento;
			escribir "el aumento sera:", total;
		SiNo
			si tarjeta = 3 entonces
				aumento <- 300 * 0.10;
				total <- 300 + aumento;
				escribir "el aumento sera:", total;
			SiNo
				si tarjeta >= 4 Entonces
					aumento <- 500 * 0.10;
					total <- 500 + aumento;
					escribir "el aumento sera:", total;
				FinSi
			FinSi
		FinSi
	FinSi

FinFuncion
//Pedir al usuario un número y mostrar si es negativo menor que -20,
//sino mostrar si es positivo par o impar múltiplo de 7.
Funcion ejer9
	definir num1, resultado como real ;
	Escribir "Por favor , ingrese un numero";
	leer num1;
	
	si num1 <= -20 Entonces
		Escribir "El numero es  menor que -20" ;
	finSi
	si   num1 > 0 entonces 
		Escribir "El numero es Positivo";
	FinSi
	si num1 mod 2 = 0 y num1 mod 7 == 0  Entonces
		Escribir "el numero es par y multiplo de 7';
	SiNo
		si num1 mod 2 <> 0 y num1 mod 7==0 entonces
			Escribir 'el numero no es par, pero si multiplo de 7';
		FinSi
		si num1 mod 2 == 0 y num1 mod  7 <> 0 Entonces
			Escribir 'El numero es par, pero no es multiplo de 7';
		finsi
		si num1 mod 2<>0 y num1 mod 7 <>0 Entonces
			escribir 'el numero no es par y tampoco multiplo de 7';
		FinSi
	finsi
FinFuncion

//La asociación de vinicultores tiene como política fijar un precio inicial al quintal de 
//pitajaya, la cual se clasifica en tipos "Amarilla" y "Colorada", y además en tamaños 1 y 2. Cuando se realiza la venta del producto, 
//ésta es de un solo tipo y tamaño, se requiere determinar cuánto recibirá un productor por la pitajaya que entrega en un embarque, considerando lo siguiente: ? Si es de tipo Amarilla, 
//se le cargan $10 al precio inicial cuando es de tamaño 1; y 15% mas $5 si es de tamaño 2 ? Si es de tipo Colorada, se rebajan $20 cuando es de tamaño 1, y 20% cuando es de tamaño 2. 
//Sea tipo Amarilla y Colorada se debe se aplicar un descuento del 5% y el 12% del IVA. Realice un algoritmo para determinar el precio de embarque
Funcion ejer10
	Definir tipopitajaya Como Caracter;
	Definir tamapitajaya , kilos como Entero;
	Definir precioInicial como real;
	Definir ganancia, precio_final como real;
    precioInicial <- 10 ;
    
    Escribir "Ingrese el tipo de pitajaya (Amarillo o Colorado):";
	Leer tipopitajaya;

    Escribir "Ingrese el tamaño de pitajaya (1 o 2):";
    Leer tamapitajaya;
	
	Escribir " Ingrese los kilos de pitajaya";
	leer kilos;
	Si tipopitajaya = "Amarilla" y tamapitajaya = 1 Entonces
		precio_final<- precioInicial +10;
	Sino 
		Si tamapitajaya = 2 Entonces
			precio_final<-precioInicial + 1.5;
		SiNo
			Si tipopitajaya = "Colorada" y tamapitajaya = 1 Entonces
				precio_final<- precioInicial - 20;
			Sino 
				Si tamapitajaya = 2 Entonces
					precio_final<- precioInicial  - 6;
				fin si;
			fin si	
		Fin Si
	fin si					
	ganancia<- precio_final * kilos;
	desct <- ganancia * 0.5;
	iva <- desct * 0.12;
	total <- ganancia - desct + iva ;
	Escribir " La ganancia es:", ganancia;
    Escribir " el descuento que se lleva a cabo ",desct;
	Escribir " el iva ", iva;
	Escribir " el total del embarque ", total;
FinFuncion

//Pedir al usuario un número y mostrar si es par menor que 10, 
//sino mostrar si es negativo e impar o negativo divisible para 5
Funcion ejer11
	definir num1, resultado como real; 
	Escribir "Por favor , ingrese un numero";
	leer num1;
	
	si num1 < 10 Entonces
		Escribir "El numero es  menor que 10" ;
	finSi
	si   num1 > 10 entonces 
		Escribir "El numero es mayor que 10";
	FinSi
	si num1 <0 Entonces
	Escribir "El numero es negativo";
	FinSi
	si num1 mod 2 = 0  Entonces
		Escribir "el numero es par";
	SiNo
		Escribir " el numero es impar";
	fin si
	
	si num1 mod 5=0 Entonces
		Escribir " el numero ingresado es divisible de 5";
		
	SiNo
		Escribir " el numero ingresado no es divisble de 5";
	FinSi
FinFuncion

//Fábricas "El cometa" produce artículos con claves (1, 2, 3, 4, 5 y 6). 
//Se requiere un algoritmo para calcular los precios de venta, para esto hay que 
//considerar lo siguiente: Costo de producción = materia prima + mano de obra + gastos de fabricación. Precio de venta = 
//costo de producción + 45 % de costo de producción. El costo de la mano de obra se obtiene de la siguiente forma: para los productos con clave 3 o 4 se carga 75 % del 
//costo de la materia prima; para los que tienen clave 1 o 5 se carga 80 %, y para los que tienen clave 2 o 6, 85 %. Para calcular el gasto de fabricación se considera que, 
//si el artículo que se va a producir tiene claves 2 o 5, este gasto representa 30 % sobre el costo de la materia prima; si las claves son 3 o 6, representa 35 %; si las claves son 1 o 4,
//representa 28 %. La materia prima tiene el mismo costo para cualquier clave.
Funcion ejer12
	Definir clave, materiaP, manoO, gastosF, cosPro, precioV Como Real;
	Escribir "Ingrese el costo de la materia prima:";
	Leer materiaP;
	Escribir "Ingrese la clave del producto (1-6):";
	Leer clave;
	Segun clave Hacer
		caso 1, 5:
			manoO <- materiaP * 0.80;
			gastosF <- materiaP * 0.28;
		caso 2, 6:
			manoO <- materiaP* 0.85;
			gastosF <- materiaP * 0.30;
		caso 3, 4:
			manoO <- materiaP* 0.75;
			gastosF <- materiaP * 0.35;
		De Otro Modo:
			Escribir "Clave de producto no válida.";
	Fin Segun
	cosPro<- materiaP + manoO + gastosF;
	precioV<- cosPro + (cosPro * 0.45);
	Escribir "El precio de venta es: ", precioV;
FinFuncion
//Dado un número entero N, calcular e informar al usuario cuántos dígitos tiene dicho número.
Funcion ejer13
	Definir num, contador Como Entero;
	num<-0; contador<-0;
	Escribir "Ingrese cualquier número para decir cuántos dígitos tiene";
	leer num;
	Mientras num>1 Hacer
		num<-trunc(num/10);
		contador<-contador+1;
	Fin Mientras
	Escribir "Estos números tienen ",contador, " dígitos";
FinFuncion
//Dado un número, determine si es capicúa.
Funcion ejer14
	
	Definir num, a, b Como Entero;
	num<-0; a<-0; b<-0;
	Escribir "Ingrese cualquier número para ver si es capicua o no";
	leer num ;
	a<-trunc(num/100);
	b<-num mod 10;
	si a=b entonces 
		Escribir "Este número es capicua";
	sino 
		Escribir "Este número no es capicua";
	FinSi
FinFuncion

//Escribir un algoritmo que presente los divisores de un numero
Funcion ejer15
	Escribir "Ingrese un número";
	definir num,x  Como Real;
	leer num;
	Escribir "lOS NÚMEROS DIVISIBLES PARA ESTE NÚMERO SON:";
	Para x<-1 Hasta num Con Paso 1 Hacer
		si num mod x=0 entonces 
			Escribir x;
		FinSi
	Fin Para
FinFuncion

//Escribir un algoritmo que presente la suma de los divisores de un numero
Funcion ejer16
	//Definimos variables 
	Definir x , i , suma  Como Entero;
	
	//Usamos el comando escribir para mostra por pantalla 
	//Piediendo un numero cualquiera al usuario
	Escribir "  Digite un numero  ";
	leer x ;
	//usamos el comado wheli
	suma<- 0;
	i <- 1;
	Mientras i <= x Hacer
		
		Si x mod i = 0 Entonces
			Escribir i;
			suma<-  suma + (x/i);
			
		SiNo
			
		Fin Si
		
		i<- i + 1;
	Fin Mientras
	Escribir "La suma de los divisores es: ", suma;

FinFuncion
Funcion ejer17
	//Definimos variables 
	Definir a , i Como Entero;
	//Mostrar por pantalla, diciendo al usuario que digite un numero
	Escribir " digite un numero cualquiera";
	leer a ;
	//usamos el bucle for
	Para i <-1 Hasta a Con Paso 1 Hacer
		Si a mod i = 0 Entonces
			Escribir "Los numeros divisores de ", a, " son ", i;
		SiNo
			
		Fin Si
	Fin Para

FinFuncion

//Escribir un algoritmo que indique si un número es perfecto
//Nota: un número es perfecto cuando la suma de los divisores del número incluido el 1 y excluido el propio número es igual al numero
//Ejemplo: numero=6: los divisores del 6 son: 1+2+3=6
Funcion ejer18
	Definir x , i , suma  Como Entero;
	Escribir " Digite un numero cualquiera ";
	leer x ;
	i<- 2;
	suma <- 0;
	Mientras i <= x  Hacer
		Si x mod i = 0  Entonces
			Escribir i;
			suma <- suma + (x/i);
			
			
		SiNo
			
		Fin Si
		i<- i + 1;
	Fin Mientras
	Escribir suma ;
	Si suma = x  Entonces
		Escribir " Es un numero perfecto ";
		Escribir " ls suma de sus divisores es: ", suma ," es  igua al numero que digitado ";
	SiNo
		Escribir " no es un numero perfecto ";
	Fin Si
	

FinFuncion

Funcion ejer19
	//Definimos variables
	Definir x , a , suma Como Entero;
	//Mostramos por pantalla para que el usuario digite un numero 
	Escribir " digite un numero ";
	leer a ;
	//usamos el bucle for
	suma <- 0 ;
	Para x<-1 Hasta a Con Paso 1 Hacer
		
		Si a mod x = 0 Entonces
			Escribir x ;
			
			suma<- suma + 1;
		SiNo
		Fin Si
	Fin Para
	Si suma = 2 Entonces
		Escribir "el numero ",a," si es primo ";
	SiNo
		Escribir "el numero ",a," no es primo ";
	FinSi
FinFuncion

//Dado dos números determinar si son primos gemelos.
//Nota: Dos números son primos gemelos si los dos son primos y su resta en valor absoluto es igual a 2. Ejemplo: 7 y 5
Funcion ejer20
	definir a,b, n,pn2,i,p Como Entero;
	escribir "Digite los numeros";
	leer a,b;
	n<-a;
	mientras (n+2 <=b) Hacer
		p<-1;
		para i<-2 hasta n/2 con paso 1 Hacer
			si n2 % i =0 Entonces
				pn2<-0;
			FinSi
		FinPara
		si p = 1 Entonces
			pn2 <-1; 
			n2<- n+2;
			para i<- 2 hasta n2/2 Con Paso 1 Hacer
				si n2 % i= 0 entonces
					pn2<-0;
				FinSi
			FinPara
			si pn2 =1 Entonces
				Escribir n, " - ", n2;
			FinSi
			
		FinSi
		n<- n+1;
	FinMientras
FinFuncion

//Dado dos números determinar si son primos amigos.
//Nota: Dos números son primos amigos si las sumas de los divisores del numero1 es igual a la suma de los divisores del numero2. Ejemplo: 6(1+2+3=6) y 25(1+5=6)
Funcion ejer21
	Definir a, b, sum1, sum2, i,j Como Entero;
	escribir "ingrese dos numeros";
	leer a, b;
	i <-1;
	suma<-0 ;
	mientras i < a Hacer
		si a % i ==0 Entonces
			sum1<- sum1 +i;
		FinSi
		i <-i+1;
	FinMientras
	
	j<-1;
	sum2<-0;
	mientras j < b Hacer
		si b % j ==0 Entonces
			sum2<-suma2+j;
		FinSi
		j<-j+1;
	FinMientras
	
	si sum1 ==b y sum2 == a Entonces
		Escribir "los numeros son amigos";
	SiNo
		Escribir "los numero no son amigos";
	FinSi
FinFuncion
//ejercicios de cadenas y arreglos 
Funcion cadena1
	//1) Dada n realizar un algoritmo que presente la siguiente secuencia
	//n=6 respuesta= 2 2 4 8 32 256
	Definir arreglo, num, x, i Como Entero;
	num<-0; x<-0; i<-0;
	Escribir "Ingrese la cantidad de números que desea ver";
	leer num;
	Dimension arreglo(num);
	Para i<-1 Hasta num Con Paso 1 Hacer
		x<-azar(num);
		Escribir x, ","   Sin Saltar;
	Fin Para
	Escribir " ";

FinFuncion

//Implementa un programa que calcule el promedio de los elementos pares e impares en un
//arreglo de números enteros y los copie en otro arreglo.
Funcion cadena2
	Escribir "Escriba el total de números a ingresar";
	leer num;
	Dimension arreglo(num);
	Para i<-1 Hasta num Con Paso 1 Hacer
		Escribir "Ingrese el ",i,"er número";
		leer x;
		arreglo(i)<-x;
	Fin Para
	pares<-0;
	para i <- 1 Hasta num Con Paso 1 hacer 
		si arreglo(x) mod 2 = 0  Entonces
			pares <- pares + 2;
			Escribir " los numeros pares son: " , pares; 
		FinSi
	FinPara
FinFuncion
Funcion cadena3
	//1) Dada n realizar un algoritmo que presente la siguiente secuencia
	//n=6 respuesta= 2 2 4 8 32 256
	Definir arreglo, num, x, i Como Entero;
	num<-0; x<-0; i<-0;
	Escribir "Ingrese la cantidad de números que desea ver";
	leer num;
	Dimensionar arreglo(num)
	Para i<-1 Hasta num Con Paso 1 Hacer
		x<-azar(num);
		Escribir x, ","   Sin Saltar;
	Fin Para
	Escribir " ";

FinFuncion
//Implementa un programa que copie los números de un arreglo a 2 arreglos en uno los números positivos y en el otro los negativos 

//Ejemplo: arreglo=[2,-6,4,-9, 12] arregloPositivo=[2,4,12] arregloNegativo[-6,-9]
Funcion cadena4
	Definir num, arreglo, i Como entero;
	num<-0; i<-0;
	
	Escribir "Ingrese la cantidad total de números ";
	leer num;
	Dimension arreglo(num)
	Para i<-1 Hasta num Con Paso 1 Hacer
		Escribir "Ingrese el ",i,"er número";
		leer arreglo(i);
		
	Fin Para
	Para i<-1 Hasta num Con Paso 1 Hacer
		si arreglo(i)>0 entonces 
			Escribir  Sin Saltar arreglo(i),",";
		FinSi
	FinPara
	Para i<-1 Hasta num Con Paso 1 Hacer
		si arreglo(i)<0 entonces 
			Escribir Sin Saltar arreglo(i),",";
		FinSi
	FinPara
	Escribir " ";

FinFuncion

//Leer una secuencia de números hasta que se ingrese un numero negativo. 
//Mostrar la suma de los pares y la cantidad de los números que son múltiplo de 3 Ejemplo: s
//ecuencia: 4,14,3,0,21,2,-4 Respuesta paresSuma=20 contMuliplos3=2
Funcion cadena5
	definir n Como Entero;
	Escribir "escribe una secuencia de numeros y termina cuando se ingrese un numero negativo";
	Mientras n>=0 Hacer
		escribir "ingrese un numero";
		leer n;
		
		si n mod 2=0 y n <> 0 Entonces
			suma <-n + suma;
		FinSi
		si n mod 3 ==0 y n<>0 entonces 
			impa<- impa + 1;
		FinSi
	Fin Mientras
	
	Escribir "la suma de los pares son ", suma;
	
	Escribir "los multipos de 3 son ", impa;
	
FinFuncion

Funcion cadena6
	Definir nums,c,i, exponentes, suma Como Entero;
	Definir verificador Como Logico;
	c<-0; i<-0; suma<-0; exponentes<-0; verificador<-falso ;
	
	Dimension nums[1000];
	
	Mientras verificador <- falso;
		Escribir Sin Saltar "Ingrese un número";
		Leer nums[i];
		Si nums[i] = 0 Entonces
			verificador<-verdadero;
		FinSi
		i<-i+1;
	FinMientras
	
	Escribir Sin Saltar "Exponentes: ";
	Para i<-0 Hasta i-2 Con Paso 1 Hacer
		exponentes <- nums[i] ^ 2;
		Escribir Sin Saltar exponentes, " ";
		suma<- suma + exponentes;
	FinPara
	Escribir " ";
	Escribir "La suma del cuadrado de cada número es: ", suma;

FinFuncion

Funcion cadena7
	definir n,suma Como Entero;
	Definir verificador Como Logico;
	Dimension nums[100];
	Mientras verificador <- Falso;
		Escribir Sin Saltar "Ingrese un número" ;
		Leer nums[i];
		Si nums[i] mod 2 = 0 Entonces
			verificador<-verdadero;
		FinSi
		Si nums[i] > 5 Entonces
            contador <- contador + 1;
        FinSi
        Si nums[i] Mod 5 = 0 Entonces
            suma <- suma + nums[i];
        FinSi
	Fin Mientras
	Escribir "Cantidad de números mayores a 5: ", contador;
    Escribir "Suma de múltiplos de 5: ", suma;
FinFuncion
Funcion cadena8
	Definir nums,c,i, exponentes, suma Como Entero;
	Definir verificador Como Logico;
	c<-0; i<-0; suma<-0; exponentes<-0; verificador<-falso ;
	
	Dimension nums[1000];
	
	Mientras verificador <- falso;
		Escribir Sin Saltar "Ingrese un número";
		Leer nums[i];
		Si nums[i] < 0 Entonces
			verificador<-verdadero;
		FinSi
		i<-i+1;
	FinMientras
	
	Escribir Sin Saltar "Exponentes: ";
	Para i<-0 Hasta i-2 Con Paso 1 Hacer
		exponentes <- nums[i] ^ 3;
		Escribir Sin Saltar exponentes, " ";
		suma<- suma + exponentes;
	FinPara
	Escribir " ";
	Escribir "La suma del cuadrado de cada número es: ",suma;
FinFuncion

Funcion cadena9
	Definir frase como cadena;
	definir palabra Como Caracter;
	Definir contpalabras, x Como Entero;
	contpalabras<-0;
	Escribir "Ingrese una frase";
	leer frase ;
	Para x<-1 Hasta Longitud(frase) Con Paso 1 Hacer
		palabra<-Subcadena(frase,x,x);
		si palabra = " " Entonces 
			contpalabras<-contpalabras+1	;	
		FinSi
	Fin Para
	Escribir "Esta oraciones tiene ",contpalabras, " palabras";
FinFuncion


Funcion cadena10
	Definir arreglo,arreglo2, a , i   Como entero;
	
	Dimension arreglo[100];
	Dimension arreglo2[100];
	
    a <- 1;
	i <- 1;
	Mientras a >= 0 Hacer
		Escribir " digite un valor ";
		leer a;
		arreglo(i)<-a;
		
		i<- i + 1;
	Fin Mientras
	
	Para a <-1 Hasta 100 Con Paso 1 Hacer
		arreglo2[a]<- arreglo(a) *2;
		si arreglo2[a] > 0;
			Escribir arreglo(a) " el doble es : ",arreglo2(a);
		FinSi
	Fin Para

FinFuncion
Funcion cadena11
	definir contador Como Entero;
	definir palabra Como Caracter;
	Escribir "ingrese una frase";
	leer palabra ;
	contador<-0;
	para i <-1 hasta Longitud(palabra) Con Paso 1 Hacer
		si Subcadena(palabra,i,i) = "x" Entonces
			contador<- contador+1;
		FinSi
	FinPara
	Escribir "la cantidad de x son ", contador; 
FinFuncion

Funcion cadena12
	Definir nums,c,i, exponentes, suma Como Entero;
	Definir verificador Como Logico;
	c<-0; i<-0; suma<-0; exponentes<-0; verificador<-falso;
	
	Dimension nums[1000];
	
	Mientras verificador <- falso;
		Escribir Sin Saltar "Ingrese un número";
		Leer nums[i];
		Si nums[i] = 0 Entonces
			verificador<-verdadero;
		FinSi
		i<-i+1;
	FinMientras
	Para i<-0 Hasta i-2 Con Paso 1 Hacer
		Escribir "el numero ingresado es : ", nums[i];
		
	FinPara
	para j<-0 Hasta i Con Paso 1 Hacer 
		si  nums[j] mod 2 = 0 Entonces
			Escribir "los numeros pares son:",nums[j] ;
		FinSi
	FinPara
FinFuncion
Funcion cadena13
	Definir num1, num2, val Como Entero;
	
    Escribir "Ingrese el número inicial: ";
    Leer num1;
	
    Escribir "Ingrese el número final: ";
    Leer num2;
	
    Escribir "Valores mayores a 5 entre ", num1, " y ", num2, " incluidos:";
	
    val <- num1;
    Mientras val <= num2 Hacer
        Si val > 5 Entonces
            Escribir val;
        FinSi
        val <- val + 1;
	FinMientras
	
FinFuncion

Funcion cadena14
	Definir  edades, cantidad,i, sumaM, suman, cantn, cantM Como Entero;
	
	cantidad<-0;i<-0; sumaM<-0; suman<-0; cantM<-0; cantn<-0;
	
	Escribir "Ingrese la cantidad de edades a promediar";
	Leer cantidad;
	
	Dimension edades[cantidad];
	
	Para i<-0 Hasta cantidad-1 Con Paso 1 Hacer
		Escribir Sin Saltar "Ingrese la edad ", i+1
		Leer edades[i];
		
		Si edades[i] >= 18 Entonces
			sumaM<- sumaM + edades[i] ;
			cantM<- cantM+1;
		SiNo
			suman<- suman + edades[i];
			cantn<- cantn+1;
		FinSi
	FinPara
	
	Si cantM > 0 y cantn > 0 Entonces
		Escribir "Cantidad mayores o iguales 18 años: ",cantM;
		Escribir "Promedio mayores o iguales 18 años; ",sumaM/cantM;
		Escribir "Cantidad menores de 18 años: ",cantn;
		Escribir "Promedio menores de 18 años: ",suman/cantn;
	SiNo
		Si cantM > 0 y cantn = 0 Entonces
			Escribir "Cantidad mayores o iguales 18 años: ",cantM;
			Escribir "Promedio mayores o iguales 18 años; ",sumaM/cantM;
			Escribir "Cantidad menores de 18 años: No existe";
			Escribir "Promedio menores de 18 años: No hay valor a promediar";
		FinSi
	FinSi
FinFuncion

Funcion cadena15
	Definir num, num2, val Como Entero;
	
    Escribir "Ingrese el número inicial: ";
    Leer num;
	
    Escribir "Ingrese el número final: ";
    Leer num2;
	
    Escribir "Valores impares entre ", num, " y ", num2, " excluyendo los extremos:";
	
    val <- num + 1;
    Mientras val < num2 Hacer
        Si val MOD 2 <> 0 Entonces
            Escribir val;
        FinSi
        val <- val + 1;
    FinMientras
	
FinFuncion
Funcion cadena16
	Escribir "Ingrese cuantos empleados tiene";
	leer num;
	Dimension arreglo(num)
	Para i<-1 Hasta num-1 Con Paso 1 Hacer
		Escribir "Ingrese el sueldo del ",i, "er empleado";
		leer x;
		arreglo(i)<-x;
		u<-u+x;
		
	Fin Para
	Escribir "El sueldo de los empleados es: ";
	Para i<-1 Hasta num-1 Con Paso 1 Hacer;
		Escribir arreglo(i), "; " Sin Saltar;
		
	Fin Para
	Escribir " ";
	Para i<-1 Hasta num-1 Con Paso 1 Hacer
		si arreglo(i)>mayor1 entonces 
			mayor1<-arreglo(i);
		FinSi
	Fin Para
	l<-i-1;
	z<-u/l;
	Escribir "El sueldo más alto es: ", mayor1;
	Escribir "La cantidad del sueldo es: ", l, " ;el promedio general es: ",z;
FinFuncion

Funcion cadena17
	Escribir "Ingrese dos frases";
	leer frase1;
	leer frase2;
	x<-Longitud(frase1);
	i<-longitud(frase2);
	si x>i Entonces
		Escribir "Esta frase ", frase1, " tiene mayor longitud que la otra ";
	sino 
		escribir "Esta frase ", frase2, " tiene mayor longitud que la otra " ;
	FinSi
FinFuncion


Funcion cadena18
	Definir frase como cadena ;
	definir palabra Como Caracter;
	Definir contpalabras, x Como Entero;
	contpuntos<-0;
	contcomas<-0;
	cont2puntos<-0;
	contpuntosycomas<-0;
	Escribir "Ingrese una frase";
	leer frase ;
	Para x<-1 Hasta Longitud(frase) Con Paso 1 Hacer
		palabra<-Subcadena(frase,x,x);
		si palabra = "." Entonces 
			contpuntos<-contpuntos+1;
		FinSi
		si palabra = "," Entonces 
			contcomas<-contcomas+1;
			
		FinSi
		si palabra = ";" Entonces 
			contpuntosycomas<-contpuntosycomas+1;
			
		FinSi
		si palabra = ":" Entonces 
			cont2puntos<-cont2puntos+1;
			
		FinSi
	Fin Para
	Escribir "Esta oraciones tiene ",contpuntos, " puntos";
	Escribir "Esta oracion tiene ", contcomas, " comas";
	Escribir "Esta oracion tiene ", contpuntosycomas, " punto y comas";
	Escribir "Esta oracion tiene ", cont2puntos, " dos puntos";

FinFuncion

Funcion cadena19
	definir x, i, z, c, p Como Entero;
	Definir cade Como Caracter;
	Escribir "Ingrese una cadena; números y/o letras ";
	leer cade;
	x<-Longitud(cade);
	i<-1;
	z<-0;
	c<-0;
	p<-0;
	
	Mientras i<=x Hacer
		
		segun subcadena(cade,i,i) Hacer
			"a" o "A":
				z<-z+1
			"e" o "E":
				z<-z+1
			"i" o "I":
				z<-z+1
			"o" o "O":
				z<-z+1
			"u" o "U":
				z<-z+1
			De Otro Modo:
				segun Subcadena(cade,i,i) hacer
					1:
						p<-p+1;
					2:
						p<-p+1;
					3:
						p<-p+1;
					4:
						p<-p+1;
					5:
						p<-p+1;
					6:
						p<-p+1;
					7:
						p<-p+1;
					8:
						p<-p+1;
					9:
						p<-p+1;
					0:
						p<-p+1;
					De Otro Modo:
						c<-c+1;
				FinSegun
				
				
		FinSegun
		i<-i+1;
	Fin Mientras
	Escribir "la frase tiene tantos digitos ", x;
	Escribir "Esta cadena tiene ", z, " Vocales";
	Escribir "Esta cadena tiene ", c, " consonates";
	Escribir "Esta cadena tiene ", p, " numeros";
	
	
FinFuncion
Funcion cadena20
	Definir frase como cadena;
	definir palabra Como Caracter;
	Definir contpalabras, x Como Entero;
	contpalabras<-0;
	Escribir "Ingrese una frase";
	leer frase;
	Para x<-1 Hasta Longitud(frase) Con Paso 1 Hacer
		palabra<-Subcadena(frase,x,x);
		si palabra = " " Entonces 
			contpalabras<-contpalabras+1;		
		FinSi
	Fin Para
	Escribir "Esta oraciones tiene ",contpalabras " palabras";
FinFuncion

Funcion cadena21
	//Presentar la suma de los dígitos de una cedula"
	Escribir "Ingrese su número de cédula para sumar los dígitos";
	Para i<-1 Hasta 10 Con Paso 1 Hacer
		Escribir "Ingrese el ", i, "er dígito";
		leer num;
		totalnum<-totalnum+num;
		
	Fin Para
	Escribir "La suma de los dígitos es: ", totalnum;


FinFuncion

Funcion cadena22
	Escribir "Ingrese una palabra";
	leer frase ;
	a<-1;
	x<-0;
	b<-longitud(frase)
	Mientras a<b Hacer
		si subcadena(frase,a,a)<>subcadena(frase,b,b) Entonces
			x<-x+1;
		FinSi
		a<-a+1;
		b<-b-1;
	Fin Mientras
	Si x=0 entonces 
		Escribir "Esta palabra es palíndroma";
	SiNo
		Escribir "Esta frase no es palíndroma";
	FinSi
	

FinFuncion

Funcion cadena23
	//Presentar la posición de un carácter cualquiera dentro de una cadena"
	Escribir "Ingrese el caracter que desea observar la posición ";
	Escribir "a) Perro; b) Gato; c) Carro; d) Moto; e) Piscina";
	leer carac 
	
	Segun carac Hacer
		"a":
			Escribir "Este caracter se encuentra en la posición 1";
		"b":
			Escribir "Este caracter se encuentra en la posición 2";
		"c":
			Escribir "Este caracter se encuentra en la posición 3";
		"d":
			Escribir "Este caracter se encuentra en la posición 4";
		"e":
			Escribir "Este caracter se encuentra en la posición 5";
			
		De Otro Modo:
			Escribir "No existe ese caracter";
	Fin Segun

FinFuncion
Algoritmo principal
	definir opciones,opcion1,car Como Caracter;
	Definir menuPrincipal, menuNumeros, menuCadenasArreglos, opcn Como Caracter;
	dimension opciones[3], menuNumeros[22], menuCadenasArreglos[24];
	//menu principal 
	opciones[0]="1) Operaciones con Numeros";
	opciones[1]="2) Operaciones con Cadenas y Arreglos";
	opciones[2]="3) Salir";
	opcion1="";
	opcn="";
	//menu de operacdores con numeros 
	menuNumeros[0]<- "1) colas" ;
	menuNumeros[1]<- "2) Kilo de uvas";
	menuNumeros[2]<- "3) Residuo";
	menuNumeros[3]<- "4) Costo de cita";
	menuNumeros[4]<- "5) Calcular mitad y divisor";
	menuNumeros[5]<- "6) Banco XYZ";
	menuNumeros[6]<- "7) Calcular el divisor y el doble";
	menuNumeros[7]<- "8) Aumento de credito";
	menuNumeros[8]<- "9) Mostrar negativo y si es par";
	menuNumeros[9]<- "10) Precio Pitajaña";
	menuNumeros[10]<- "11)  Mostrar numero"; 
	menuNumeros[11]<- "12) El cometa";
	menuNumeros[12]<- "13) Cantidad de dijitos";
	menuNumeros[13]<- "14) Numero cupia";
	menuNumeros[14]<- "15) Divisores de un numero";
	menuNumeros[15]<- "16) Suma de divisores";
	menuNumeros[16]<- "17) Cantidad de divisores";
	menuNumeros[17]<- "18) Numero perfecto";
	menuNumeros[18]<- "19) Numero primo";
	menuNumeros[19]<- "20) Primos gemelos";
	menuNumeros[20]<- "21) Primos amigos";
	menuNumeros[21]<- "22) Salir";
	//menu de canada y arreglos
	menuCadenasArreglos[0]<- "1) Secuencias de numeros";
	menuCadenasArreglos[1]<- "2) Promedio de los pares";
	menuCadenasArreglos[2]<- "3) Secuencias de numeros 2";
	menuCadenasArreglos[3]<- "4) Numero positivo y negativo";
	menuCadenasArreglos[4]<- "5) Seuencia de numero hasta negativo";
	menuCadenasArreglos[5]<- "6) Leer secuencia";
	menuCadenasArreglos[6]<- "7) Secuencia de numeros hasta par";
	menuCadenasArreglos[7]<- "8) Secuencau de numeros";
	menuCadenasArreglos[8]<- "9) Cantidad de palabras";
	menuCadenasArreglos[9]<- "10) Leer un numero";
	menuCadenasArreglos[10]<- "11) Leer secuencia de x";
	menuCadenasArreglos[11]<- "12) Leer secuencia";
	menuCadenasArreglos[12]<- "13) Presentar valores";
	menuCadenasArreglos[13]<- "14) Edades de alumnos";
	menuCadenasArreglos[14]<- "15) Presentar valores imparares";
	menuCadenasArreglos[15]<- "16) Leer el sueldo";
	menuCadenasArreglos[16]<- "17) Mayor longitud";
	menuCadenasArreglos[17]<- "18) Indicar cantidad";
	menuCadenasArreglos[18]<- "19) Cantidad de vocales, consonates";
	menuCadenasArreglos[19]<- "20) Cantidad de palabras en una frase";
	menuCadenasArreglos[20]<- "21) Suma de cedula";
	menuCadenasArreglos[21]<- "22) Palindroma";
	menuCadenasArreglos[22]<- "23) Posicion de un caracter ";
	menuCadenasArreglos[23]<- "24) salir ";
	
	
	
	Mientras opcion1 <> "3" Hacer
		Borrar Pantalla;
		opcion1<-presentar_menu(opciones,3,"Menu Principal");
		Borrar Pantalla;
		Segun opcion1 Hacer
			"1":
				opcn<-"";
				Mientras opcn <> "22" Hacer
					Borrar Pantalla
					opcn<-presentar_menu(menuNumeros,22,"Menu Opereaciones con Numeros");
					Segun opcn Hacer
						"1": 
							Escribir "Cantidad de Colas";
							colas();
							esperar 5 Segundos;
						"2":
							Escribir "Kilo de Uva";
							uva()
							esperar 5 segundos;
						"3": 
							Escribir "Residuo de dos Numeros";
							residuo();
							esperar 5 Segundos;
						"4":
							Escribir "Calcular costo de cita";
							costocita();
							Esperar 5 segundos;
						"5": 
							Escribir "Calcular la mitad y el divisor de los numeros";
							ejer5num();
							Esperar 5  Segundos;
						"6":
							Escribir "Calcular el aumento";
							ejer6();
							Esperar 5 Segundos;
						"7":
							Escribir "Calcular el divisor y  si es el doble";
							ejer7();
							esperar 5 Segundos;
						"8":
							Escribir "Tipos de Tarjeta";
							ejer8();
							Esperar 5 Segundos;
						"9":
							Escribir "Mostrar el numero negativo y el par o impar";
							ejer9();
							Esperar 5 segundos;
						"10":
							Escribir "Calcular Precio de pitajaya segun su clasificacion";
							ejer10();
							Esperar 5 Segundos;
						"11":
							Escribir "Mostrar si es par o negativo y divisible de 5";
							ejer11();
							Esperar 5 Segundos;
						"12":
							Escribir "Mostrar precio de cometa";
							ejer12();
							esperar 5 Segundos;
						"13":
							Escribir "Calcular dijitos";
							ejer13();
							esperar 5 segundos;
						"14":
							Escribir "Determinar si es capicua";
							ejer14();
							Esperar 5 Segundos;
						"15":
							Escribir "Presentar divisores de un numero";
							ejer15();
							esperar 5 Segundos;
						"16":
							Escribir "Prentar suma de divisores";
							ejer16();
							Esperar 5 Segundos;
						"17":
							Escribir "Mostrar la cantidad de divisores de un numero";
							ejer17();
							esperar 5 segundos ;
						"18":
							Escribir "Calcular si el numero es perfecto";
							ejer18();
							Esperar 5 Segundos;
						"19":
							Escribir "Calcular si el numero es primo";
							ejer19();
							Esperar 5 Segundos;
						"20":
							Escribir "Determinar si son primos gemelos";
							ejer20();
							esperar 5 segundos ;
						"21":
							Escribir "Determinar si dos numeros son primos amigos";
							ejer21();
							esperar 5 segundos;
						"22":
							Escribir "Regresando al menu principal";
							
					FinSegun
					
					
				FinMientras
				
			"2":
				opcn<-"";
				Mientras opcn<> "24" Hacer
					Borrar Pantalla;
					opcn<-presentar_menu(menuCadenasArreglos,24,"Menu de Canenas y Arrelos");
					Segun opcn Hacer
						"1":
							Escribir "Secuencias de numeros";
							cadena1();
							Esperar 5 Segundos;
						"2":
							Escribir "calcular numeros pares e impares";
							cadena2();
							esperar 5 segundos;
						"3":
							Escribir "Secuencias de numeros 2";
							cadena3();
							esperar 5 segundos;
						"4":
							Escribir "Copiar numeros de un arreglo";
							cadena4();
							esperar 5 Segundos;
						"5":
							Escribir "Suma de secuencias y multipos";
							cadena5();
							esperar 5 Segundos;
						"6":
							Escribir "leer secuencia de numero hasta ingresar un cero";
							cadena6();
							esperar 5 Segundos;
						"7":
							Escribir "Ingresar secuencia hasta un impar";
							cadena7();
							esperar 5 Segundos;
						"8":
							Escribir "Leer secuecias de numeros hasts un numero negativo";
							cadena8();
							esperar 5 segundos;
						"9":
							Escribir "Cantidad de palabras en la frase";
							cadena9();
							esperar 5 segundos;
						"10":
							Escribir "Secuencias almacenar y mostrar su doble";
							cadena10();
							esperar 5 Segundos;
						"11":
							Escribir "Mostrar cuantas x se ingresaron";
							cadena11();
							esperar 5 segundos;
						"12":
							Escribir "Ingrese numero hasta un 0";
							cadena12();
							esperar 5 Segundos;
						"13":
							Escribir "presnetar los valores mayores 5 ";
							cadena13();
							esperar 5 segundos ;
						"14":
							Escribir "Calcular las edad";
							cadena14();
							Esperar 5 Segundos;
						"15":
							Escribir "Presentar valores impares";
							cadena15();
							esperar 5 Segundos;
						"16":
							Escribir "Sueldos de los empleados de la unemi";
							cadena16();
							esperar 5 segundos;
						"17":
							Escribir "Dada dis frases indicar la de mayor longitud";
							cadena17();
							esperar 5 segundos;
						"18":
							Escribir "Indicar cantidad de signos";
							cadena18();
							esperar 5 segundos;
						"19":
							Escribir "Calcular cantidad de vocales, consonates y digitos";
							cadena19();
							esperar 5 Segundos;
						"20":
							Escribir "Cuantas palabras hay en la frase";
							cadena20();
							Esperar 5 Segundos;
						"21":
							Escribir "Suma de los diguitos de cedula";
							cadena21();
							esperar 5 segundos;
						"22":
							Escribir "Si una palabra es palindroma";
							cadena22();
							esperar 5 Segundos;
						"23":
							Escribir "Presentar posicion de un caracter";
							cadena23();
							esperar 5 Segundos;
						"24":
							Escribir "Regresando al menu principal";
							
					FinSegun
				FinMientras
			"3":
				Escribir "Salir del Sistema";
				
			De Otro Modo:
				Escribir "Opcion no valida";
		Fin Segun
		Esperar 3 Segundos;
    Fin Mientras
	Escribir "Gracias por usar el Sistema...";
	
FinAlgoritmo
