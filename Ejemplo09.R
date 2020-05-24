rm(list=ls())
getwd()
dir(pattern="xlsx")

#### Cargar la data en memoria ####
excel_sheets(path="excel_prueba.xlsx")
excel_iris <- read_excel("excel_prueba.xlsx", sheet ="iris")
excel_women <- read_excel("excel_prueba.xlsx",
                          sheet=excel_sheets(path="excel_prueba.xlsx")[2],
                          col_names=F)
str(excel_women)
colnames(excel_women)
colnames(excel_women) <-c("col1", "col2")

help("read_excel")
excel_air <- read_excel(path="excel_prueba.xlsx", sheet = "airquality", skip=3)

colnames(excel_air)
class(excel_air)
