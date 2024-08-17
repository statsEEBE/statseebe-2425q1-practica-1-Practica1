#Ejercicio 1

X1 <- c(rep(3,40), rep(6,35), rep(18,45))
X1

sum1 <- sum(X1)
sum1

X2 <- X1[-c(13, 101, 35, 48, 87, 113, 72, 96)] 
X2

sum2 <- sum(X2)
sum2

X3 <- X2[1:50] 
X3

sum(X3==6)

V.rms <- sqrt(sum(X3^2)/(length(X3))) 
V.rms

#Ejercicio 2

X <- seq(0,pi,by=pi/16) 
X

length(X)

sum.X <- sum(X) 
sum.X

sin.X <- sin(X) 
sin.X

max.sin.X <- max(sin.X) 
max.sin.X

which(sin.X==max.sin.X)


Y <- X[-c(4,9,14)] 
Y

Z <- sum(sin(X))-sum(cos(Y))
Z

# Ejercicio 3

mes <- c("Enero","Febrero","Marzo","Abril","Mayo","Junio","Julio","Agosto","Septiembre","Octubre","Noviembre","Diciembre"); mes

valor <- c(23, 33, 25, 45, 10, 28, 39, 27, 15, 38, 34, 29); valor
facturas <- data.frame (mes,valor)

sum(facturas$valor)

val.min <- min(facturas$valor)

val.min

facturas$mes[facturas$valor==val.min]

val.max <- max(facturas$valor)
val.max

facturas$mes[facturas$valor==val.max]

val.prom <- mean(facturas$valor)
val.prom

facturas$mes[facturas$valor>=val.prom]

#Ejercicio 4

tiempo <- seq(from=0, by=3, length.out = 25)
tiempo

pH <- c(3.08, 3.26, 3.67, 3.79, 3.89, 3.91, 4.11, 4.52, 4.55, 4.59, 4.66, 4.79, 5.02, 5.48, 5.60, 6.00, 6.15, 6.37, 16.38, 6.63, 6.89, 7.05, 7.18, 7.22, 7.94); pH


medidas <- data.frame (tiempo,pH)
medidas$tiempo[medidas$pH>14]

medidas$pH[medidas$pH>14]=NA
medidas

mean(medidas$pH, na.rm=T)

acidez <- rep("NA", 25)
acidez[medidas$pH<=5]="Acido"
acidez[medidas$pH>5 & medidas$pH<=7]="Normal"
acidez[medidas$pH>7]="Alcalino"
medidas <- cbind(medidas,acidez)
medidas

sum(medidas$acidez=="Acido")

sum(medidas$acidez=="Normal")

sum(medidas$acidez=="Alcalino")

mean(medidas$pH[medidas$acidez=="Acido"])

mean(medidas$pH[medidas$acidez=="Normal"])

mean(medidas$pH[medidas$acidez=="Alcalino"])

plot(medidas$tiempo,medidas$pH); abline(h=c(5,7))
