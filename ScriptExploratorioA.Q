library(tidyverse)
library(ggplot2)

db <- readRDS("db10_20.rds")
View(db)

#Cual es el departamento con mas bodas?
dep<-db[,'Departamento de ocurrencia']

depocu<-subset(dep, select=c('Departamento de ocurrencia'),db$`Departamento de ocurrencia` != 0)
dep1<-data.frame(depocu)
nde<-aggregate(dep1$dep, dep1, length)

View

pregunta1<-ggplot(data=nde, aes(x=reorder(x , dep1) , y=x,fill=dep1)) +
  geom_bar(stat="identity")+
  
  theme(axis.text.x = element_text(angle = 60, vjust = 1, hjust=1))+
  labs(title="Departamento con mas ocurrencias?", x="Departamento de ocurrencia", y="Cantidad de ocurrencias")

pregunta1