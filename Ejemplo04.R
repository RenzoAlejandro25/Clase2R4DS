# Los dataframes son parecidos a la matrices, sirve para guardar datos 
#### Data Frames en R ####

# Definición

Nota1 <- runif(10, 1,19)
Nota2 <- sample(1:20,10)
MiPrimerDF <- data.frame(NotaP = Nota1,NOTAF= Nota2)
class(MiPrimerDF)
dim(MiPrimerDF)
str(MiPrimerDF) #Me dice la estructura que tiene este objeto
View(MiPrimerDF)

#### Acceso a la información en un DF ####
MiPrimerDF$NotaP
MiPrimerDF[[1]]
MiPrimerDF[,1]

# Desean ingresar algún parámetro por teclado
help("readline")