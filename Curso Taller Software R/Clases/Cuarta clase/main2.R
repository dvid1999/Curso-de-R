# Tablas anidas o en capas.
# La variable var�a de acuerdo a una unidad de an�lisis.
# Queremos explicar el copmportamiento de la poblaci�n
# �nfasis: Riesgo de error.
# Par�metros: media, varianza.
# $\mu$ es la media poblacional
# $\sigma$ cuadrado
# propoci�n es $\mathcal{P}$ o $\pi$.
# Refleja la misma estructura. Si es homogenea la poblacion, su muestra tambi�n lo ser�. Si la poblacion es heterogenea, su muestra lo ser�.

# Estimadores: $\bar{x}$ y $s$ cuadrado.
# Lo que se quiere es saber el comportamiento de la poblaci�n
# En las t�cnicas de muestro (distribuciones muestrales) empieza la probabilidad. Empieza en $\mu$ y $\sigma$, medimos el nivel de confianza.

# Falta la validaci�n, hemos estudiado estimaci�n puntual. Ahora veremos por intervalo. Y la verificaci�n de hip�tesis con su teor�a por detr�s

# En un informe de investigaci�n o t�cnico lo que nos importa son las conclusiones.

# En la muestra se obtuvo un 25%, 30%, 50%. Es un resultado parcial, necesitamos validar. Son significativos?
# Todos los grupos son iguales, provienen de la poblaci�n, debe decir $H_1$

# Rechazar la $H_0$ es la hip�tesis nula, sabiendo que es correcta.
# Todos los analistas usan el $p$ valor.
# Decisi�n: Es significativo o no
# Conclusi�n: A partir de los datos

# La distribucion chi cuadradado sigue una distribucion n-1 grados de libertad


# x minuscula es un valor dado fijo y arbitrario, discreto.
# Acumulada lleva $\le$

# Bernoulli es una sola vez, 0 o 1.
# Binomial es Bernoulli es repetido Bernoulli

# Lo que cambia es el error estandar y la estimacion

# Se usa la distribucion t: pcos datos y varianza desconodida
# cuantil $1-\frac{1}{2}$, se encuentra en tablas $\alpha$ nivel de significancia, error estandar $\sqrt{N}$. Se pueed demostrar

load("quinua.rda") # Es posible quitar la extensi�n

# Calcula la cota inferior del intervalo, llam�ndola ci
ci<-mean(quinua$P_GRANO)-qt(0.975,39)*sd(quinua$P_GRANO)/sqrt(40)
# Calcula la cota superior del intervalo, llam�ndola cs
cs<-mean(quinua$P_GRANO)+qt(0.975,39)*sd(quinua$P_GRANO)/sqrt(40)
# Agrupa en un vector la cota inferior y la cota superior, haci�ndolas aparecer en la ventana de resultados
c(ci,cs)
# Y nos muestra el resultado.
# Leer https://es.wikipedia.org/wiki/Prueba_t_de_Student

# Ese 95% es de la muestra que seleccion�. Si el intervalo es grande, mayor dispersi�n. Lo que nos interesa es intervalo que contenga a la media.

Una muestra grande es m�s de 30
$z$ es el cuantil de una distribuci�n normal.

# cuasivarianza entre la raiz cuadrado del n�mero de datos
# Aprender el significado de la formula, desvios de la media de cada dato entre n-1. Por estimar una variable desconocido, estimar el par+ametro perdemos un grado de libertad
# por eso es n-1.
# Iris es 150. Podemos asumir que es una distribuci�n normal

data(iris); attach(iris);hist(Petal.Width)
# Calcula la cota inferior del intervalo, llam�ndola ci
ci<-mean(Petal.Width)-qnorm(0.975)*sd(Petal.Width)/sqrt(150)
# Calcula la cota superior del intervalo, llam�ndola cs
cs<-mean(Petal.Width)+qnorm(0.975)*sd(Petal.Width)/sqrt(150)
c(ci,cs) # Agrupa en un vector la cota inferior y la cota superior

# Es una distribuci�n bimodal.
# Hay que hallar la media para ver si hay mucha variacic�n
# numero de nueves vacias: variable aleatoria
# probabilidad 21/300

# variable dicot�mica podemos aproximar a la normal.
# hallar la varianza de la variable nueeces vacias en bolsas
# varianza: p*q, q=1-p
# p: proporcional muestra=21/300
# N: N�mero de la muestra

# Vamos a aplicar la f�rmula para hallar el intervalo.

# Calcula la cota inferior del intervalo, llam�ndola ci
ci <-21/300-qnorm(0.975)*sqrt((21/300)*(1-21/300)/300)
# Calcula la cota superior del intervalo, llam�ndola cs
cs<-21/300+qnorm(0.975)*sqrt((21/300)*(1-21/300)/300)

# Agrupa en un vector la cota inferior y la cota superior, haci�ndolas aparecer en la ventana de resultados
c(ci,cs)

# Muestras normales o muestras grandes
# El cuantil es de xi cuadrado con probabilidad 1-\alpha/2 con N-1 grados de libertad

# Calcula la cota inferior del intervalo, llam�ndola ci
ci <-149*var(Petal.Width)/qchisq(0.975,149)
# Calcula la cota superior del intervalo, llam�ndola cs
cs<-149*var(Petal.Width)/qchisq(0.025,149)
# Agrupa en un vector la cota inferior y la cota superior, haci�ndolas aparecer en la ventana de resultados
c(ci,cs)
# El valor es para la probabilidad de �xito.

# Adem�s, adem�s de los estimadores puntuales se debe hacer los estimadores por interevalos, se debe mostrar el intervalo de confianza, es decir por el error.

# La mediana es m�s robusta que la media. No se ven afectados por los valores extremos.

# Estad�stico es sin�
# Solo tenemos distribuciones que comparar en el caso de la mediana.
# Cu�l es el error est�ndar para calcular la mediana, la mediana no es un estimador

# Debemos dar la definici�n operacional.

# Par�metro de la media de hombres y par�metro de la media de mujeres.
# Hip�tesis estad�sitca: es un procedimiento.

# Hip�tesis nula debe estar expresado en una igualdad.

# Hay m�s diversidad en contraste param�trica.

# los par+ametros son: mu, sigma cuadrada
# nivel de significancia es el \alpha
# paso 3 viene de los estimadores de la clase pasada.
# paso4: regi�n cr�tica

# la hipotesis nula es una presuncion de inocencia no se acepta, solo se, a una persona no lo declaro culpable, sino no se muestra su inocencia
# conclsusipn: no se acepta la hipotesis nuela: se muestra el nivel de siginificancia de tanto

# adelantar sinonio de rechazar

# contener aire cuando si es posible respirar, esto es un error
# el error m�s grave es el \alpha
# la proxima clase vemos los parametricos
# para variables cualitativas test de independeica chi cuadrado


# No rechazamos la hipotesis pues el pvalor es de 0.85, no existe una asociacion significativa entre las variables con un nivel de siginificanaia del 5%
# Falta ver otros test de

# Durar� una hora y media, es una pr�ctica calificada