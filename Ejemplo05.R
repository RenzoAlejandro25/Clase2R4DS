#### Cargar datos en memoria ####
dir()
gluc <- read.table(file= "glucosa.txt", header = TRUE) #debemos específicar si lleva
# cabecera
class(gluc)
str(gluc)
colnames(gluc)
class(colnames(gluc))
gluc$glucosa
mean(gluc$glucosa)
mediam(gluc$glucosa)
sd(gluc$glucosa)
var(gluc$glucosa)
quantile(gluc$glucosa, probs=0.1)
quantile(gluc$glucosa, probs=0.5)
quantile(gluc$glucosa, probs=c(0.1, 0.9))

gluc$temperatura

plot(x=1:31, y=gluc$temperatura, 
     main= "Dataset glucosa.txt", xlab= "Índices", ylab = "Temperatura",type ='l')
help("plot")

# text()
# line()
# hist()
# barplot()
# pie()
