library(tidyverse)
library(ModelMetrics)
library(ggplot2)

#Modelo lineal simple
porcentaje<- 0.7
datos<- readRDS("db10_20.rds")
View(datos)
set.seed(123)


corte <- sample(nrow(datos),nrow(datos)*porcentaje)
train<-datos[corte,]
test<-datos[-corte,]


fitLMPW<-lm(train$`Clase de union` ~ ., data = train)
predL<-predict(fitLMPW, newdata = test)

resultados<-data.frame(test$`Clase de union`,predL)
residuales <- test$`Clase de union`-predL
summary(fitLMPW)


# Predict with Test Data
predicted_value = predict(fitLMPW,test)
expected_value = factor(test$`Clase de union`)
