# Los dataframes son parecidos a la matrices, sirve para guardar datos 
#### Data Frames en R ####

# Definici�n

Nota1 <- runif(10, 1,19)
Nota2 <- sample(1:20,10)
MiPrimerDF <- data.frame(NotaP = Nota1,NOTAF= Nota2)
class(MiPrimerDF)
dim(MiPrimerDF)
str(MiPrimerDF) #Me dice la estructura que tiene este objeto
View(MiPrimerDF)

#### Acceso a la informaci�n en un DF ####
MiPrimerDF$NotaP
MiPrimerDF[[1]]
MiPrimerDF[,1]

# Desean ingresar alg�n par�metro por teclado
help("readline")