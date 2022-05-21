#Arbol de regresion 
library(rpart)
library(caret)
library(tree)
library(rpart.plot)
library(randomForest)

data <- readRDS("db10_20.rds")

str(data)


df<-data[,c("Departamento de registro","Municipio de registro","Escolaridad del hombre","Escolaridad de la mujer","Grupo etnico del hombre","Grupo etnico de la mujer", "Clase de union")]

ws<-data[,c("Clase de union")]

ws<- haven::as_factor(ws)

m1<-rpart(ws~ ., data = df, method = "anova")
m1
rpart.plot(m1, type = 3, digits = 3, fallen.leaves = TRUE )



