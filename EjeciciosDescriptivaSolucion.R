#Ejercicio 1
data(stackloss) 

head(stackloss)

stackloss$Air.Flow[5]

dim(stackloss)

dim(stackloss)

help(stackloss)

ni <- table(stackloss$Air.Flow)
fi <- table(stackloss$Air.Flow)/length(stackloss$Air.Flow)
Ni <- cumsum(ni)
Fi <- cumsum(fi)
Tabla_Frec = cbind(ni,fi,Ni,Fi); Tabla_Frec


stem(stackloss$Air.Flow)


Temp <- stackloss$Water.Temp[stackloss$Air.Flow==58]
dotchart(Temp)

barplot(table(stackloss$Acid.Conc.))

pie(table(stackloss$Air.Flow))

bp = boxplot(stackloss)

mean(stackloss$Air.Flow)

median(stackloss$Water.Temp)

quantile(stackloss$Acid.Conc.,0.25)

quantile(stackloss$stack.loss,0.18)

IQR(stackloss$Water.Temp)

sd(stackloss$Acid.Conc.)

var(stackloss$Air.Flow)

# Ejercicio 2

Datos = read.table("DatosCoches.txt",header=TRUE, sep="\t",dec=".")
head(Datos)

dim(Datos)

dim(Datos)

ni <- table(Datos$Origin)
fi <- table(Datos$Origin)/length(Datos$Origin)
Tabla_Frec = cbind(ni,fi); Tabla_Frec

breaks <- seq(8,27,by=3); breaks

Acel.grp <- cut(Datos$Acceleration, breaks, right=FALSE)#
ni <- table(Acel.grp)
fi <- table(Acel.grp)/length(Acel.grp)
Ni <- cumsum(ni)
Fi <- cumsum(fi)
Tabla_Frec_grp = cbind(ni,fi,Ni,Fi); Tabla_Frec_grp

mpg <- na.omit(Datos$MPG)
breaks <- seq(5,45,by=10); breaks

mpg.grp <- cut(mpg, breaks, right=TRUE)#
ni <- table(mpg.grp)
fi <- table(mpg.grp)/length(mpg.grp)
Ni <- cumsum(ni)
Fi <- cumsum(fi)
Tabla_Frec_grp <- cbind(ni,fi,Ni,Fi) 
Tabla_Frec_grp

new_breaks <- seq(50,500,by=50)
h2.wind <- hist(Datos$Displacement,breaks=new_breaks)


h2.wind$counts[4]

boxplot(Datos[-c(1,2)])

mean(Datos$MPG[Datos$Origin=="USA"],na.rm = TRUE)

median(Datos$Weigth[Datos$Cylinders==8],na.rm = TRUE)

quantile(Datos$Displacement,0.25)

hp <- na.omit(Datos$Horsepower)
sd.hp.sin <- sqrt((length(hp)-1)/length(hp))*sd(hp)

pie(table(Datos$Cylinders))
