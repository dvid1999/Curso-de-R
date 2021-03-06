x <-(0:65)/10
y <-sin(x)
z <-cos(x)
x<-(0:65)/10
y<-sin(x)
par(mfrow=c(1,2)) # probar tambi�n c(2,1)
plot(x, y, main="Seno", type="l", ylab="sin(x)")
plot(x, z, main="Coseno", type="l", lty=2, col="red",
ylab="cos(x)")

# Lo que hace par es poner dos
# mfrow: 1 fila 2 columas mfrow=c(1,2)

# Repasar c�mo est� compuesta la sint�xis

library(lattice)
x <-rbinom(100,5,0.3)
par(mfrow=c(2,2))
dotplot(x); plot(x,type="h") # Diagrama de puntos
barplot(table(x),col=rainbow(length(table(x)))) # Diagrama barras
pie(table(x)) # Diagrama de sectores circulares

# Son gr�ficos de datos discretos

plot(x, y, main="Funciones seno y coseno", type="l")
lines(x, z, col=2, lty=2)
legend(locator(1),legend=c("sin(x)","cos(x)"),lty=c(1,2),col=c(1,2))
x <-1:10; y <-sample(1:10)
nombres <-paste("punto", x, ".", y, sep="")
plot(x, y); identify(x, y, labels= nombres)

# Diagrama de quesos o pie

# En el data frame cada variable es un vector.
# Las barras representan frecencias de variables categ�ricas

load("quinua.rda")


cuadro2 <-table(quinua$TGRANO)
#cuadro2<-round(((cuadro1/margin.table(cuadro1))*100),2) barplot(cuadro2,main="Caracter�sticas del grano de quinua",sub="Fuente: Datos agr�colas",xlab="Tama�o del grano de quinua",ylab="Cantidad", ylim=c(0, 100),col="aquamarine")

cuadro3 <-table(quinua$TGRANO)
c3por<-round(((cuadro3/margin.table(cuadro3))*100),1)
etiquetas <-c("Chico", "Mediano")
etiquetas <-paste(etiquetas, c3por, "%", sep="")
pie(c3por,labels=etiquetas,
clockwise=TRUE,
main="Caracter�sticas del grano de quinua",
sub="Fuente: Datos agr�colas")

# Se puede modificar el espacio y su posici�n en la figura

par(mar=c(0, 2, 1, 2), xpd=FALSE, cex=0.5)
pie.sales<-c(0.12, 0.3, 0.26, 0.16, 0.04, 0.12)
names(pie.sales) <-c("Blueberry", "Cherry", "Apple", "Boston Cream", "Other", "Vanilla")
pie(pie.sales, col = gray(seq(0.4,1.0,length=6)))

# Es una gr�fica con escala de grises.

# El gr�fico de variables categ�ricas
# Centralidad, dispersipon y forma
# Los percentiles son estad�sticos, nos permite agrupar el 25% de la estad�stica
# Nos permite ver los valores extremos
# En un histograma para ver la forma de la distribuci�n

y <-rnorm(100); y.f<-rbinom(100,5,0.3)

# Gr�fico de tallos y hojas
stem(y)
par(mfrow=c(2,2)); m<-mean(par("usr")[1:2]) # medidas ventana usuario
# Diag. de cajas
boxplot(y); boxplot(y~y.f); boxplot(split(y,y.f),col="cyan")
# diagrama de puntos, tres m�todos
stripchart(y); text(m, 1.04, "stripchartm�todo overplot")
stripchart(y,method="jitter",add=T,at=1.2); text(m,1.35,"m�todo jitter")
stripchart(round(y,1),method="stack",add=T,at=0.7); text(m,0.85,"m�todo stack")

# n numero de datos y p es la probabilidad de �xitos
# Se parece a un histograma.

# Teorema central del l�mite, cuando n es grande, los datos tienden a aproximarse a una distribuci�n normal, es decir continuo.
# Variable de grupos (edad) sexo y edad, creo dos cajas
# El diagrama de los puntos no es muy usado.

# Todo an�lisis num�rico debe ser complementado con un an�lisis gr�fico. O elige un cuadro o un gr�fico porque ambos dicen lo mismo. En el caso de continua, podemos a�adir cuadros, su forma
# El gr�fico nos lo muestra asi como los coeficientes.

# Asim�trica negativa, hay pocos valores que
# Asim�trica positiva,
# Asimetrica a la derecha, hay un valor extremo lo que lo hace asim�trica. El investigador es estudiar el caso extremo y hacer el analissi sin el valor extremo y comparar
# El investigador debe hacer varios an�lisis y a seg�n criterio har� su interpretaci�n.

# R en su librer�a base tiene data de ejemplo.

# Proviene de una tabla de contingencia

data(VADeaths)
dotchart(VADeaths, main= "DeathRatesin Virginia -1940")
# Gr�ficos condicionados
data(quakes)
coplot(lat~long| depth, data = quakes)


# ES util en los analisis multivariantes

# long es variable cuantitiva, se presenta as� la dispersi�n

# Correlaci�n para variables cuantitivas se ver� gr�ficos de dispersi�n

X <-matrix(rnorm(1000), ncol= 2); colnames(X) <-c("a", "b")
plot(X)
X <-matrix(rnorm(1000), ncol= 5)
colnames(X) <-c("a", �id", "edad", "loc", "peso")
pairs(X)
# Una matriz de dispersi�n es sim�trica.

data(iris)
razas<-unclass(iris$Species)
plot(iris[1:2],pch=21,bg = c("red", "green3", "blue")[razas])
pairs(iris[1:4], main= "Anderson'sIris Data -3 species", pch= 21, bg= c("red", "green3", "blue")[razas])

data(swiss)
pairs(swiss, panel = panel.smooth, lwd= 2, cex= 1.5, col="blue")

# Anderson trabaj� los datos Iris
# Representa un ajuste de la curva (no necesariamente es una recta)

# Para que sea una recta cambiamos en panel=panel.line
# pairs(swiss, panel = panel.smooth, lwd= 2, cex= 1.5, col="blue")

# No necesariamente la relaci�n es lineal.
# La haremos con transformaci�n lineal, la haremos con 1/x, log(x).

y<-rnorm(500); hist(y); hist(y,5)

x<-rgamma(500,4,3)
hist(x,prob=T) # prob=T equivale a freq=F
# Estimador kernelde la densidad
lines(density(x))
bw.x<-density(x)$bw
bw.x# amplitud de la banda

# Podemos modificar la banda para la estimaci�n
lines(density(x,bw=bw.x/2),col=2)
lines(density(x,bw=bw.x*2),col=4)

# Hay que ejecutar todo hasta la primera l�nea sobre el primero, primero va el histograma.


h<-rnorm(500)
hist(h, density=5)
hist(h, break=30)
# qt es de t-student
# qgamma es de la gramma
# qu� tanto se aleja de la distribuci�n normal

y<-rnorm(500)
# Comparaci�n de los cuantilesmuestralescon los de una Normal
qqnorm(y); qqline(y)
# Comparaci�n de los cuantilesmuestralesde dos muestras
y.t<-rt(500,3)
qqplot(y,y.t,xlab="Dist. Normal", ylab="Dist. St(3)"); qqline(y)
# Comparar cuantilesmuestralescon los de una distribuci�n dada
library(lattice)
qqmath(y,distribution=function(p){qt(p,df=5)})
qqmath(y,distribution=function(p){qgamma(p,shape=3,rate=5)})


# En qu� se diferencian:

x<-rlogis(500,2,3)
Fn.x<-ecdf(x); summary(Fn.x)
plot(Fn.x,main="Funci�n Distribuci�n Emp�rica")
plot(Fn.x,add=T,verticals=T,col.v=2,col.h=4)
x.seq<-seq(min(x),max(x),length=4)
# Para evaluar Fnen cualquier punto
points(x.seq,Fn.x(x.seq),pch=21,bg="red3")
abline(v=x.seq,col="red3")
abline(h=Fn.x(x.seq),col="red3")

# Muchas universidades en USA lo dan R.
# Revisemos y revisemos. Un pregrado en R.
