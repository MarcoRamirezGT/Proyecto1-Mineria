library(ModelMetrics)
library(ggplot2)


db <- readRDS("db10_20.rds")

#Usamos el 70% de datos
porcentaje<-0.7

#El experimento debe ser repetible
set.seed(1234)

#Regresion
corte <- sample(nrow(db),nrow(db)*porcentaje)

#Entrenamiento
train<-db[corte,]

#Prueba
test<-db[-corte,]

#Regresion lineal
fitLMPW<-lm(train$`Clase de union`~ ., data = train[,c("Año de registro","Clase de union")])
predL<-predict(fitLMPW, newdata = test)

#Verificando la prediccion
resultados<-data.frame(test$`Clase de union`,predL)
head(resultados, n=5)
ggplot(data=train,mapping = aes(x=`Clase de union`,y=`Año de registro`))+
  geom_point(color='red',size=2)+
  geom_smooth(method = 'lm',se=TRUE,color='black')+
  labs(title = 'Clase de union ~ Año de registro',x="Clase de union",y='Año de registro')+
  theme_bw()+theme(plot.title = element_text(hjust = 0.5))
