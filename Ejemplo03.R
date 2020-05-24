#### Estructura de decisión IF ####

x <- runif(1, 0, 10)
if(x>5){
  y <- TRUE
}else{
  y <- FALSE
}

# En general
# if(cond1){
#   # bloque de codigo
# }else{
#   # Otro bloque de código
# }

#### Estructura de repetición: FOR ####

for(i in 1:5){
  print(i)
}

# En general
# for(variable in objetoIterable){
#   # Algo de código que depende de variable
# }

#### Paquetes/librerias en R ####
sessionInfo()

# Para cargar el paquete extraDistr
library(extraDistr) #Cargamos el paquete/libreria de extraDistr
help("extraDistr") #Accedemos a la ayuda del paquete
library(help = "extraDistr") #Mostramos toda la información que posee el paquete
help("BetaPrime") #Accedemos a la ayuda de una función

#### Definiciones de usuario en R ####

# Sintaxis
# NombreDeLaFuncion <- function(arg1,arg2, ...){
#   # alguna funcionalidad
# }
