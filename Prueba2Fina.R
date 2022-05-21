#Arbol de regresion 
library(rpart)
library(caret)
library(tree)
library(rpart.plot)
library(randomForest)

data <- readRDS("db10_20.rds")

str(data)


df<-data[,c("Municipio de registro","Escolaridad del hombre","Escolaridad de la mujer","Grupo etnico del hombre","Grupo etnico de la mujer", "Clase de union")]

ws<-data[,c("Clase de union")]

ws<- haven::as_factor(ws)

m1<-rpart(ws~ ., data = df, method = "anova")
m1
rpart.plot(m1, type = 3, digits = 3, fallen.leaves = TRUE )


#Precision o matriz

train<-data
porciento<-0.7

datos <- train[,c("Municipio de registro","Escolaridad del hombre","Escolaridad de la mujer","Grupo etnico del hombre","Grupo etnico de la mujer", "Clase de union")]
datosFiltertree <- data[,c("Municipio de registro","Escolaridad del hombre","Escolaridad de la mujer","Grupo etnico del hombre","Grupo etnico de la mujer", "Clase de union")]
datosFiltertree


set.seed(123)
trainRowsNumber <- sample(1:nrow(datosFiltertree),porciento*nrow(datosFiltertree))
train<-datosFiltertree[trainRowsNumber,]
test<-datosFiltertree[-trainRowsNumber,]

modeloRF1<-randomForest(train$`Clase de union`~.,train)
prediccionRF1<-predict(modeloRF1,newdata = test)
testCompleto<-test
testCompleto$predRF<-prediccionRF1
testCompleto$predRF<-round(testCompleto$predRF)
cfmRandomForest <- table(testCompleto$predRF, testCompleto$`Clase de union`)
plot(cfmRandomForest);text(cfmRandomForest)

cfmRandomForest <- confusionMatrix(table(testCompleto$predRF, testCompleto$`Clase de union`))
cfmRandomForest


