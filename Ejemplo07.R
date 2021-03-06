rm(list=ls()) #esto sirve para limpiar la memoria
setwd("C:/Users/Usuario/Desktop/Clases_de_R/Clase_2")
dir()

# Los archivos de texto plano se puede ver sin ning�n problema en R
# Retailsales es un archivo csv y txt
# En los archivos csv las variables de una misma observaci�n se separan por comas
# comma separate value

#### Cargamos la data: retailSales.csv.txt ####
# READ.CSV SIRVE PARA EXTRAER ARCHIVOS TIPO CSV
retail <- read.csv(file="RetailSales.csv.txt")

#### Alguna informaci�n del DF ####
class(retail)
str(retail)
colnames(retail)
View(retail)

#### Limpieza de datos ####
# Notamos que existen filas de elementos vacios asi como elementos de tipo NA
help("na.omit")

# Nota con ctrl shift 1 se visualiza todo una pesta�a

retail <- na.omit(retail) 
# na.omit: elimina todas las filas que por lo menos tengan un elemento de tipo NA

str(retail) #se visualiza la estructura de los datos

#### retail: an�lisis por a�o ####
# Veamos cuanto es lo que produjo de ventas por a�o
retail
retail[retail$Year==2000,] 
#Esto es para visualizar el total de ventas por mes en el a�o 2000
# Son los mismos c�digos para visualizar los elementos de una matriz
class(retail[retail$Year==2000,]) #Es un dataframe
retail[retail$Year==2000,]$Sales #Para visualizar todas las observaciones de las ventas
# bajo estas condiciones
sum(retail[retail$Year==2000,]$Sales) #Para sacar el total de la venta del a�o 2000
unique(retail$Year) #�Qu� valores �nicos aparecen en la variable year?
unique(retail$Year)[5:9] #Parece que tiene una estructura vectorial

# Utilicemos una estructura for para crear un dataframe donde almacenaremos un resumen por
# a�o.
ResumenSales <- data.frame(YEAR=integer(),
                           VentaTotal=double()) #Interger es para especificar que YEAR toma
# valores enteros.
NuevaFila <- data.frame()

for(y in unique(retail$Year)){
  NuevaFila <- data.frame(Yeay=y, VentaTotal = sum(retail[retail$Year==y,]$Sales))
  ResumenSales <- rbind(ResumenSales, NuevaFila)
}
View(ResumenSales)

plot(x=ResumenSales$Yeay, y=ResumenSales$VentaTotal)

#### Comportamiento de la data por mes ####
retail[retail$Month == "Jan",]$Sales
unique(retail$Month)

for(m in retail$Month){
  print(retail[retail$Month == "Jan",])
  }
help("aggregate")

RetailMes <- aggregate(Sales ~ Month , data=retail, FUN=sum)
RetailMes

month.abb
month.name

RetailMes <- RetailMes[order(match(RetailMes$Month, month.abb)),]

help("table")
sessionInfo()

