#### Archivo cloud.txt ####

cloud <- read.table(file="cloud.txt", header=T)
colnames(cloud)
cloud$Ispc
cloud$Cloudpt
str(cloud)
class(cloud)

#### Histograma ####
help("hist")
hist(cloud$Cloudpt)
h_cloudpt <- hist(cloud$Cloudpt) #Estoy guardando el histograma en el objeto h_cloudpt
# Si ejecuto cloudpt me enumero cada uno de los elementos del histograma
# breaks son los puntos de corte en el eje x, counts me indica la cantidad de datos en cada
# intervalo, mids son los puntos medios de los intervalos (intervalos de clase)
h_cloudpt$breaks #Así accedo de a los breaks
h_cloudpt$counts #Así me sale cuantos elementos aparecen en cada intervalo de clase

range(cloud$Cloudpt) #sirve para conocer el verdadero rango de intervalo de mi histograma
# El verdadero rango es de 21.9 a 33.1 y no de 20 a 34 

b1 <- 20:34
help(seq)
b2<-seq(20, 34, 1)
hist(cloud$Cloudpt, breaks = b1) #ªModifico mi histograma modificando los breaks
# Ahora hay espacios donde no hay elementos y se representan vacios en el histograma

#### Boxplot ####
help("boxplot")
boxplot(cloud$Cloudpt) #El boxplot se hace de una sola variable
# La linea en negrita es la mediana, los extremos son la mediana más (menos) 1.5 veces
# el rango intercuartílico
bp_cloudpt <- boxplot(cloud$Cloudpt)
# Si ejecuto bp_cloudplot optengo todos los campos del gráfico.
# out nos va a interesar desde un punto de vista paramétrico, sirve para conocer los 
# outlaiers y eliminarlos. 