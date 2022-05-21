library(tidyverse)
library("e1071")
library(caret)
library('MLmetrics')
# Read the data into a table from the file
#Prediccion de la variable Clase de union
db <- readRDS("db10_20.rds")

#Bayes 
#Usamos el 70% de datos
porcentaje<-0.7
#El experimento debe ser repetible
set.seed(1234)

corte <- sample(nrow(db),nrow(db)*porcentaje)
#Entrenamiento
train<-db[corte,]

#Prueba
test<-db[-corte,]
table(db$`Clase de union`)
#Modelo 1 : Variable respuesta es clase de union
# use NB classifier
NB = naiveBayes(train$`Clase de union` ~.,train,laplace = 0.01)

# Predict with Test Data
predicted_value = predict(NB,test)
expected_value = factor(test$`Clase de union`)

#Creating confusion matrix
confuisonMatrix <- confusionMatrix(data=predicted_value, reference = expected_value)

#Display results 
confuisonMatrix
Accuracy(predicted_value,expected_value)
table(expected_value,predicted_value)






#Modelo2 : Variable respuesta es clase de union
NB = naiveBayes(train$`Clase de union` ~.,train)

# Predict with Test Data
predicted_value = predict(NB,test)
expected_value = factor(test$`Clase de union`)

#Creating confusion matrix
confuisonMatrix <- confusionMatrix(data=predicted_value, reference = expected_value)

#Display results 
confuisonMatrix
Accuracy(predicted_value,expected_value)
table(expected_value,predicted_value)


#Modelo3 : Variable respuesta es clase de union
# use NB classifier
NB = naiveBayes(train$`Clase de union` ~.,train,laplace = 3)

# Predict with Test Data
predicted_value = predict(NB,test)
expected_value = factor(test$`Clase de union`)

#Creating confusion matrix
confuisonMatrix <- confusionMatrix(data=predicted_value, reference = expected_value)

#Display results 
confuisonMatrix
Accuracy(predicted_value,expected_value)
table(expected_value,predicted_value)


#Modelo 4 : Variable respuesta Escolaridad del hombre y mujer
#Escolaridad del hombre
NB = naiveBayes(train$`Escolaridad del hombre` ~.,train,laplace = 0.01)

# Predict with Test Data
predicted_value = predict(NB,test)
expected_value = factor(test$`Escolaridad del hombre`)

#Creating confusion matrix
confuisonMatrix <- confusionMatrix(data=predicted_value, reference = expected_value)

#Display results 
confuisonMatrix
Accuracy(predicted_value,expected_value)
table(expected_value,predicted_value)
#Escolaridad de la mujer
NB = naiveBayes(train$`Escolaridad de la mujer` ~.,train,laplace = 3)

# Predict with Test Data
predicted_value = predict(NB,test)
expected_value = factor(test$`Escolaridad de la mujer`)

#Creating confusion matrix
confuisonMatrix <- confusionMatrix(data=predicted_value, reference = expected_value)

#Display results 
confuisonMatrix
Accuracy(predicted_value,expected_value)
table(expected_value,predicted_value)

