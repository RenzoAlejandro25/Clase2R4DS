rm(list=ls())
getwd()

sessionInfo()
# datasets es uno de los objetos que se cargan por defecto cuando abrimos R
library(help="datasets") #visualizar informaci�n del paquete datasets

# Los dataframes en datasets ya no son necesarios cargarlos

# Por ejemplo vamos a ver airpassengers
class(AirPassengers) #es de clase de ts: time series
help(ts)
plot(AirPassengers)

class(CO2)
help(CO2)
# El nobre aparece en la esquina superior izquierda y su costado el tipo de objeto
str(CO2)
# Entre otras cosas, sirve para visualizar las variables y su tipo
# La variable Plant es de tipo ord. factor esto es que es tipo categ�rica que tiene orden
# y es de  12 niveles.

data(cars) #Data sirve para que aparezca en el global environment
data(CO2)
library(car)
data(Prestige)
str(Prestige)
head(Prestige)#Para ver los datos de las seis primeras observaciones
tail(Prestige)#Para ver los seis �ltimos

summary(Prestige)#Nos bota unos estad�sticos dependiendo del tipo de variable
# La variable type es de tipo categ�rica por eso no tiene todos los estad�sticos
Prestige[is.na(Prestige$type) ,] #Al visualizarlo y al hacer un filtro en la variable "type", las observaciones
# NA no estan se�aladas. 
help("Prestige")
levels(Prestige$type) #No muestra los NA, pero en summary si aparecen

Prestige[is.na(Prestige$type),]# Para saber que observaciones tienen NA en type

# Matriz de correlaci�n
# An�lisis de correlaci�n entre todas las variables num�ricas
cor(Prestige[,-6])
help(cor)
library(corrplot)
corrplot(cor(Prestige[,-6]))
#Sirve para ver la matriz de correlaci�n de manera m�s sencilla
library(help="readxl")
