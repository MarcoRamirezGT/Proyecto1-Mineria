#Arbol de regresion 
library(rpart)
library(caret)
library(tree)
library(rpart.plot)
library(randomForest)
library("e1071")
library('MLmetrics')



data <- readRDS("db10_20.rds")


df<-data[,c("Municipio de registro","Escolaridad del hombre","Escolaridad de la mujer","Grupo etnico del hombre","Grupo etnico de la mujer", "Clase de union")]

ws<-data[,c("Clase de union")]
ws<- haven::as_factor(ws)

m1<-rpart(ws~ ., data = df, method = "anova")
rpart.plot(m1, type = 3, digits = 3, fallen.leaves = TRUE )


#Matriz
porcentaje <- 0.7
set.seed(123)
corte <- sample(nrow(data),nrow(data)*porcentaje)

#Entrenamiento
train<-data[corte,]
test<-data[-corte,]
table(data$`Clase de union`)


predicted_value = predict(m1,test)


expected_value = factor(test$`Clase de union`)

#Igualar los niveles
#levels(expected_value) <- levels(predicted_value)


confusionMatrix(predicted_value,expected_value)
Accuracy(predicted_value,expected_value)
#confusionMatrix <- confusionMatrix(data=predicted_value, reference = expected_value)

# library(ModelMetrics)

# rmse_1=rmse(test$`Clase de union`,predicted_value)
# rmse_1