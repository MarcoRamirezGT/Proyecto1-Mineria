library(tidyverse)
library(rpart)
library(rpart.plot)
library(caret)

datos <- readRDS("db10_20.rds")
View(datos)
datoss <- datos[,c("Ocupacion del hombre","Ocupacion de la mujer","Edad del hombre", "Edad de la mujer","Escolaridad del hombre","Escolaridad de la mujer")]
datosFiltertree <- datos[,c("Ocupacion del hombre","Ocupacion de la mujer","Edad del hombre", "Edad de la mujer","Escolaridad del hombre","Escolaridad de la mujer","Clase de union")]


set.seed(1234)
porciento <- 0.7
trainRowsNumber<-sample(1:nrow(datosFiltertree),porciento*nrow(datosFiltertree))
train<-datosFiltertree[trainRowsNumber,]
test<-datosFiltertree[-trainRowsNumber,]

dt_model<-rpart(train$`Clase de union`~.,train, method = 'class')
rpart.plot(dt_model, box.palette = "green")
