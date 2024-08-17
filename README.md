# Practica 1

## Material Práctica 0

Introducción a R: 

- PDFs: [diapos](https://github.com/alejandro-isglobal/alejandro-isglobal.github.io/blob/master/slides/practica1.pdf)
- Datos: [dat1.txt](https://github.com/alejandro-isglobal/alejandro-isglobal.github.io/blob/master/data/dat1.txt)

- Videos: [Video 1](https://youtu.be/rj0qrpSmTnc), [Video 2](https://youtu.be/hp1RpL3QBuE), [Video 3](https://youtu.be/0kHW1qufx9M), [Video 4](https://youtu.be/EKbMF_8QxvQ)


## Material Practica 1 

2. Estadística descriptiva: 

- PDFs: [diapos](https://github.com/alejandro-isglobal/alejandro-isglobal.github.io/blob/master/slides/practica2.pdf)

- Datos: [air.txt](air.txt)

- Videos: [Video 1](https://youtu.be/wuRchCaCBBs), [Video 2](https://youtu.be/_3kT7o31u4I), [Video 3](https://youtu.be/oujlmfr67FA)



## Trabajo en clase

comandos:

- <code><-</code>
- <code>$</code>
- <code>[]</code>
- <code>:</code>
- <code>IQR()</code>
- <code>head()</code>
- <code>hist()</code>
- <code>mean()</code>
- <code>median()</code>
- <code>pie()</code>
- <code>quantile(, 0.25)</code>
- <code>seq()</code>
- <code>sd()</code>
- <code>sum()</code>
- <code>var()</code>

[Pregunta 1](Problema1.png)

[Pregunta 2](Problema2.png)

[Pregunta 3](Problema3.png)


# Ejercicios Introduccion
# Ejercicio 1

- Crea un vector llamado X1 que contenga que 120
 valores: los cuarenta primeros que sean igual a 3
, los siguientes treinta y cinco que sean igual a 6
 y los últimos cuarenta y cinco que sean igual a 18
.


- Calcula la suma de todos sus elementos

- Extrae de X1 los elementos de las posiciones 13, 101, 35, 48, 87, 113, 72 y 96. Llama al vector resultante X2 y calcula la suma de sus elementos.

- Selecciona los primeros 40 elementos de X2, llámalo X3 ¿cuántos elementos tienen el valor igual a 6?

- Calcula el valor cuadrático medio del vector X3, es decir, $Vrms= \sqrt{\frac{1}{n} \sum x^2}$
 donde x=
X3 y n
 es la longitud del vector.
 
# Ejercicio 2

- Crea el vector X que contiene la siguiente información: $[0,\frac{\pi}{16}, 2\frac{\pi}{16}, 3\frac{\pi}{16} ...16\frac{\pi}{16} ]$

- ¿Cuántos elementos tiene el vector X?.

- Calcula la suma de todos sus datos 


- Calcula el seno para cada elemento y encuentra el valor máximo y su posición.

- Crea un vector Y a partir del vector X eliminando los datos almacenados en las posiciones 4,9,14. Calcula $\sum \sin(X_i)−\sum \cos(Y_i)$
.

# Ejercicio 3

A lo largo de un año, los importes de tus facturas mensuales del móvil han sido: 23, 33, 25, 45, 10, 28, 39, 27, 15, 38, 34, 29. Escribe un "script" en "R" en que se cree una tabla de datos (data.frame) con los nombres de los meses y el valor de cada factura. El debe responder automáticamente las siguientes preguntas, incluso si cambia cualquier valor.


<code>
mes <- c("Enero","Febrero","Marzo","Abril","Mayo","Junio",
"Julio","Agosto","Septiembre","Octubre","Noviembre","Diciembre")


valor <- c(23, 33, 25, 45, 10, 28, 39, 27, 15, 38, 34, 29) 

facturas <- data.frame (mes,valor)

facturas 
</code>

- ¿Cuánto has gastado en total en el año?

- ¿En qué mes has gastado menos dinero? 

- ¿Cuánto ha sido?

- ¿En qué meses has gastado más que el promedio?


# Ejercicio 4

En un experimento se tomaron medidas de pH de una sustancia química para determinar su acidez. Se tomaron 25 medidas cada 3 horas y los resultados fueron: 3.08, 3.26, 3.67, 3.79, 3.89, 3.91, 4.11, 4.52, 4.55, 4.59, 4.66, 4.79, 5.02, 5.48, 5.60, 6.00, 6.15, 6.37, 16.38, 6.63, 6.89, 7.05, 7.18, 7.22 y 7.94. Donde la primera medida se tomó en el tiempo 0, la segunda a las 3 horas y así sucesivamente. Crea una tabla de datos (data.frame) que contenga en una variable el tiempo (en horas) en que se tomó la medida y en otra variable el valor del pH.

<code>
tiempo <- seq(from=0, by=3, length.out = 25)

pH <- c(3.08, 3.26, 3.67, 3.79, 3.89, 3.91, 4.11, 4.52, 4.55, 4.59, 4.66, 4.79, 5.02, 5.48, 5.60, 6.00, 6.15, 6.37, 16.38, 6.63, 6.89, 7.05, 7.18, 7.22, 7.94)
medidas <- data.frame (tiempo,pH)

medidas
</code>


- Teniendo en cuenta que el pH es una medida que oscila entre 0 y 14, ¿a las cuántas horas se ha tomado una medida errónea?



- Elimina dichos valores mal tomados. Recuerda que en su lugar se ha de especificar que la medida no existe, es decir, reemplaza la/las medidas erróneas por "valores faltantes" (NA). Calcula el promedio de la medida de pH de todo el experimento.


- Se considera que un pH menor o igual que 5 indica que es una sustancia ácida, entre 5 y 7 (incluido) es normal y, mayor que 7 es alcalina. Agrega a la tabla existente otra variable que indique si el resultado es ácido, neutro o alcalino.



- ¿Cuantas muestras se han tomado para cada grado de acidez?.



- ¿Cuál es el promedio de pH para cada grado de acidez?

- Realiza una gráfica que represente el tiempo contra el pH, agrégale dos lineas horizontales que limiten los grados de acidez.

# Ejercicios Descriptiva
# Ejercicio 1

El conjunto de datos stackloss contiene los datos operativos de una planta de oxidación de amoniaco a ácido nítrico. Cárgalo e imprime en pantalla las 6 primeras filas, 

<code>
data(stackloss)

head(stackloss)
</code>


- ¿Cuál es la temperatura del agua de la quinta muestra?

- ¿Cuántas observaciones tiene el conjunto de datos?

- ¿Cuántas variables tiene el conjunto de datos?

- Explora lo que significa cada variable: nombre, tipo de datos, unidades de medida, etc.


- Calcula la tabla de frecuencias del flujo de aire, es decir: las frecuencias absolutas (ni
), frecuencias absolutas acumuladas (Ni
), frecuencias relativas (fi
) y las frecuencias relativas acumuladas (Fi
).

- Realiza el gráfico de tallos y hojas del flujo de aire. ¿Cuáles son los números que representan las hojas del tallo con el número 7?

- Realiza el gráfico de puntos de la temperatura del agua cuando el flujo de aire es 58. ¿Cuál es la temperatura máxima? (23)



- Realiza el gráfico de barras de la concentración de ácido. ¿Cuántas veces se ha medido 87? (4)

- Realiza el gráfico de sectores del flujo de aire. ¿Cuál medida de flujo es la que más se repite? (58)

- Realiza el diagrama de cajas de todas las variables. ¿En cuáles variables hay valores extremos?(Flujo de aire y Pérdida de amoniaco)

- ¿Cuál es la media del flujo de aire?

- ¿Cuál es la mediana de la temperatura del agua?

- ¿Cuál es el primer cuartil de la concentración de ácido?

- ¿Cuál es el valor (percentil) en el cual el 18% de las observaciones de la pérdida de amoniaco son menores y el 82% son mayores?

- ¿Cuál es el rango intercuartílico de la temperatura del agua?

- ¿Cuál es la desviación típica (corregida) de la concentración de ácido?

- ¿Cuál es la varianza (corregida) del flujo de aire?

# Ejercicio 2

El conjunto de datos DatosCoches.txt contiene información sobre diferentes marcas de coches. Desárgalo en el directorio local, cárgalo en R e imprime en pantalla las 6 primeras filas, ¿Cuál es el modelo de la cuarta muestra? (amc)

<code>
Datos = read.table("DatosCoches.txt",header=TRUE, sep="\t",dec=".")

head(Datos)
</code>



- ¿Cuántas observaciones tiene el conjunto de datos?

- ¿Cuántas variables tiene el conjunto de datos?

- 
Calcula la tabla de frecuencias para la variable del Origen, es decir: las frecuencias absolutas (ni
) y frecuencias relativas (fi
).

- ¿Porque no se calculan las frecuencias acumuladas?

- Calcula la tabla de frecuencias para la aceleración con los datos agrupados cada 3 unidades, comenzando por 8 (incluido).


- Calcula la tabla de frecuencias para las millas por galón (MPG) con los datos agrupados cada 10 unidades, comenzando por 5 (no incluido).


- Haz el histograma del desplazamiento agrupando los valores en intervalos de 50 unidades comenzando por 50. ¿Cuántas muestran tienen desplazamiento entre 200 y 250?

- Realiza el diagrama de cajas de todas las variables. ¿Cuál variable tiene valores extremos? (Acceleration)

- ¿Cuál es la media de las millas por galón (MPG) de los coches fabricados en Estados Unidos?

- ¿Cuál es la mediana del peso de los coches que tienen 8 cilindros?

-  ¿Cuál es el primer cuartil del desplazamiento?

- ¿Cuál es la desviación típica sin corregir de la potencia (Horsepower)?

- Realiza el gráfico de sectores del número de cilindros. ¿Cuál es el número que menos se repite? (6)


