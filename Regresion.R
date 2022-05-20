library(tidyverse)
library(ModelMetrics)
library(ggplot2)

porcentaje<-0.7
set.seed(123)


db <- readRDS("db10_20.rds")
percentil <- quantile(db$`Clase de union`)

View(db)

#Percentiles 
clase<-c("tipo")
db$tipo<- clase

#Regresion
corte <- sample(nrow(db),nrow(db)*porcentaje)
train<-db[corte,]
test<-db[-corte,]


#Verificando la predicci?n
resultados<-data.frame(test$`Clase de union`,predL)
head(resultados, n=5)



#Regresion lineal
fitLMPW<-lm(`Clase de union`~ ., data = train[,c("Departamento de Registro","Municipio de Registro")])

predL<-predict(fitLMPW, newdata = test)
dev.off()
ggplot(data=train,mapping = aes(x=clase_uni,y=dep_reg ))+
  geom_point(color='red',size=2)+
  geom_smooth(method = 'lm',se=TRUE,color='black')+
  labs(title = 'Precio de venta ~ Pies cuadrados de vivienda',x="Precio de venta",y='Pies cuadrados de venta')+
  theme_bw()+theme(plot.title = element_text(hjust = 0.5))


head(fitLMPW$residuals)
residuales <- test$SalePrice-predL
residuales

summary(fitLMPW)



