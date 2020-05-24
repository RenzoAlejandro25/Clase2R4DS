rm(list=ls()) #esto sirve para limpiar la memoria
setwd("C:/Users/Usuario/Desktop/Clases_de_R/Clase_2")
dir()

#### Cargamos la data: retailSales.csv.txt ####
retail <- read.csv(file="RetailSales.csv.txt")

#### Alguna información del DF ####
class(retail)
str(retail)
colnames(retail)
View(retail)

#### Limpieza de datos ####
# Notamos que existen filas de elementos vacios asi como elementos de tipo NA
help("na.omit")
# Nota con ctrl shift 1 se visualiza todo una pestaña
retail <- na.omit(retail) 
# na.omit: elimina todas las filas que por lo menos tengan un elemento de tipo NA

str(retail) #se visualiza la estructura de los datos

#### retail: análisis por año ####
# Veamos cuanto es lo que produjo de ventas por año
retail
retail[retail$Year==2000,]
class(retail[retail$Year==2000,])
retail[retail$Year==2000,]$Sales
sum(retail[retail$Year==2000,]$Sales)
unique(retail$Year)

# Utilicemos una estructura for para crear un dataframe donde almacenemos un resumen por
# año.
ResumenSales <- data.frame(YEAR=integer(),
                           VentaTotal=double())
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

