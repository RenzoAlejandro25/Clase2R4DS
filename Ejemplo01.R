# Seteo/configuro el directorio de trabajo
setwd("C:/Users/Usuario/Desktop/Clases_de_R/Clase_2")

# Verificar el wd (working directory)
getwd()

# Listar el contenido de trabajo
dir()
help("dir")
dir(pattern="csv")
dir(pattern="R")

# Limpiar memoria
rm(list=ls())