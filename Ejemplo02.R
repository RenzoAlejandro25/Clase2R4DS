rm(list=ls())
setwd("C:/Users/Usuario/Desktop/Clases_de_R/Clase_2")

#### Craci�n de matrices ####

x1 <- c(2,4,5,8,1,12,23,34)
class(x1)

# Definir matrices
help("matrix")
mat1 <- matrix(data =1:9, nrow=3, ncol=3)
mat2 <- matrix(data=1:9, ncol=3)
mat3 <- matrix(data=1:15, nrow=5)
# byrow = FALSE: lo primero que se llena son las columnas
mat3 <- matrix(data=1:15, nrow=5, byrow= TRUE, 
               dimnames=list(c("r1", "r2","r3","r4","r5"), c("c1","c2","c3")))

#### Algunas propiedades del objeto matrix ####
class(mat3)
dim(mat3)
help("dim")

Dimensiones <- dim(mat3)
Dimensiones[1]
Dimensiones[2]

colnames(mat3)
rownames(mat3)

#### Acceso a los elementos de un objeto matrix ####
# Notaci�n matricial

# Creamos una nueva matriz
help("sample")
mat4 <- matrix(data=sample(1:129,9), ncol=3)
mat4[2,2] #Mostramos el elemento (2,2)
mat4[2,2] <- pi #modificamos el valor del elemento (2,2)
mat4[,3]
mat4[3,]

# Elementos especiales 

-1:1/0 #NaN es no a number
x <- NA