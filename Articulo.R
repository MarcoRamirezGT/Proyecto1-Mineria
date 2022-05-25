library(rpart)
library(caret)
library(tree)
library(rpart.plot)
library(randomForest)


db <- readRDS("db10_20.rds")
db$`Clase de union` <- as.factor(db$`Clase de union`)
#Usamos el 70% de datos
porcentaje<-0.7
#El experimento debe ser repetible
set.seed(1234)

df<-db[,c("Escolaridad del hombre","Escolaridad de la mujer","Grupo etnico del hombre","Grupo etnico de la mujer", "Clase de union")]

df$`Escolaridad del hombre`<-as.numeric(as.character(df$`Escolaridad del hombre`)) 
df$`Escolaridad de la mujer`<-as.numeric(as.character(df$`Escolaridad de la mujer`)) 
df$`Grupo etnico del hombre`<-as.numeric(as.character(df$`Grupo etnico del hombre`)) 
df$`Grupo etnico de la mujer`<-as.numeric(as.character(df$`Grupo etnico de la mujer`)) 

str(df)
set.seed(1234)

corte <- sample(nrow(df),nrow(df)*porcentaje)
#Entrenamiento
train<-df[corte,]

#Prueba
test<-df[-corte,]

# Fitting Random Forest to the train dataset
set.seed(120)  # Setting seed
dt_model<-rpart(train$`Clase de union`~.,train,method = "class",control = list(cp = 0, maxcompete = 0, maxsurrogate = 0, xval = 0, minsplit = 10, minbucket = 5))

rpart.plot(dt_model)


prediccion <- predict(dt_model, newdata = test[-5])

columnaMasAlta<-apply(prediccion, 1, function(x) colnames(prediccion)[which.max(x)])
test$prediccion<-columnaMasAlta

cfm<-table(test$`Clase de union`,test$prediccion)
cfm
