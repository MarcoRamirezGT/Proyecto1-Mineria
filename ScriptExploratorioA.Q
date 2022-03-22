library(tidyverse)
library(ggplot2)

db <- readRDS("db10_20.rds")
View(db)

#Cual es el departamento con mas bodas?
dep<-db[,'Departamento de ocurrencia']

depocu<-subset(dep, select=c('Departamento de ocurrencia'),db$`Departamento de ocurrencia` != 0)
dep1<-data.frame(depocu)
nde<-aggregate(dep1$dep, dep1, length)

Departamento<-c(nde$depocu)
CantidadMa<-c(nde$x)
df<-data.frame(Departamento,CantidadMa)


df$Departamento<-as.factor(df$Departamento)

pregunta1<-ggplot(data=df, aes(x=Departamento , y=CantidadMa,fill=CantidadMa)) +
  geom_bar(stat="identity")+
  
  theme(axis.text.x = element_text(angle = 60, vjust = 1, hjust=1))+
  labs(title="Departamento con mas ocurrencias?", x="Departamento de ocurrencia", y="Cantidad de ocurrencias")

pregunta1

View(df)

ggplot(data=df, aes(x=reorder(Departamento,CantidadMa), y=CantidadMa, fill=Departamento)) +
  geom_bar(stat="identity", position=position_dodge())+
  geom_text(aes(label=CantidadMa), vjust=1.6, color="black",
            position = position_dodge(0.9), size=3.5)+
  labs(title="Moda de las edades de las parejas en los 10 años registrados  ", x="Edades de las parejas", y="Cantidad de parejas ")+theme(legend.position="none")
