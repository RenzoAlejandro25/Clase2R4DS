#### Cargar datos en memoria ####
dir()
# READ.TABLE SE UTILIZA EN ARCHIVOS TIPO TXT (LOS DATOS SE SEPARAN POR ESPACIOS)
gluc <- read.table(file= "glucosa.txt", header = TRUE) #debemos espec�ficar si lleva
# cabecera con la opci�n header
class(gluc) #Esto es para saber la clase de objeto que estamos escogiendo ver
str(gluc) #Esto es para su estructura
colnames(gluc) #Esto es para saber el nombre de las variables
class(colnames(gluc)) #Significa que R lo reconoce como un vector, R me dice character
gluc$glucosa
mean(gluc$glucosa) #La media
mediam(gluc$glucosa) #la mediana
sd(gluc$glucosa) #La desviaci�n est�ndar
var(gluc$glucosa) #La varianza de la variable glucosa
quantile(gluc$glucosa, probs=0.1)
quantile(gluc$glucosa, probs=0.5)
quantile(gluc$glucosa, probs=c(0.1, 0.9))

gluc$temperatura

plot(x=1:31, y=gluc$temperatura, 
     main= "Dataset glucosa.txt", xlab= "�ndices", ylab = "Temperatura",type ='l')
# la opci�n type sirve para seleccinar como quiero que se visualice mi diagrama de disperci�n
# type se puede omitir
help("plot")

# text()
# line()
# hist()
# barplot()
# pie()
