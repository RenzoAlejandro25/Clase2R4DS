rm(list=ls())
getwd()

class(AirPassengers)
help(ts)
plot(AirPassengers)
library(help="datasets")

class(CO2)
help(CO2)
str(CO2)
data(cars)
data(CO2)
library(car)
data(Prestige)
str(Prestige)
head(Prestige)
tail(Prestige)

summary(Prestige)
Prestige[is.na(Prestige$type) ,] #Sirve para conocer todos los tipos NA
help("Prestige")

# Análisis de correlación entre todas las variables numéricas
cor(Prestige[,-6])
help(cor)
library(corrplot)
corrplot(cor(Prestige[,-6]))

library(help="readxl")
