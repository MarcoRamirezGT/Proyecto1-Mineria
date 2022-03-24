library(tidyverse)
library(ggplot2)

db<-readRDS("db10_20.rds")

#Pregunta 1
#Departamento con menos bodas
dep<-db[,'Departamento de ocurrencia']
depocu<-subset(dep, select=c('Departamento de ocurrencia'),db$`Departamento de ocurrencia` != 0)
dep1<-data.frame(depocu)
nde<-aggregate(dep1$dep, dep1, length)

Departamento<-c(nde$depocu)
CantidadMa<-c(nde$x)
df<-data.frame(Departamento,CantidadMa)
df$Departamento<-as.factor(df$Departamento)

ggplot(data=df, aes(x=reorder(Departamento,CantidadMa), y=CantidadMa, fill=Departamento)) +
  geom_bar(stat="identity", position=position_dodge())+
  geom_text(aes(label=CantidadMa), vjust=1.6, color="black",
            position = position_dodge(0.9), size=3.5)+
  labs(title="Cual es del departamento con mas bodas? ", x="Mes de registro", y="Cantidad registrada ")+theme(legend.position="none")
