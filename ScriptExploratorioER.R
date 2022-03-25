library(tidyverse)

db <- readRDS("db10_20.rds")

#Cantidad de extranjeros registrados en Guatemala


hombres_ext<-subset(db, select=c('Nacionalidad del hombre'),db$`Nacionalidad del hombre`!=320)
hombres1<-nrow(hombres_ext)

mujeres_ext<-subset(db, select=c('Nacionalidad de la mujer'),db$`Nacionalidad de la mujer`!=320)
mujeres1<-nrow(mujeres_ext)

extran<-c(hombres1, mujeres1)
extranjerosgtT<-(hombres1 + mujeres1)

extraT<-c(extranjerosgtT)


df<-data.frame(extran, extraT)

View(df)

df$extran<-as.factor(df$extran)

pregunta1Ed<-ggplot(data=df, aes(x=reorder(extraT,extran), y=extran, fill=extraT)) +
  geom_bar(stat="identity", position=position_dodge())+
  geom_text(aes(label=extran), vjust=1.6, color="black",
            position = position_dodge(0.9), size=3.5)+
  labs(title="Cantidad de extranjeros registrados en Guatemala ", x="Total de Extranjeros", y="Datos Hombres y Mujeres")+theme(legend.position="none")


# Maximo de bodas registradas en un dia
dep<-db[,'Dia de ocurrencia']
depocu<-subset(dep, select=c('Dia de ocurrencia'),db$`Dia de ocurrencia` != 0)
dep1<-data.frame(depocu)
nde<-aggregate(dep1$dep, dep1, length)

View(nde)


D<-c(nde$depocu)
C<-c(nde$x)
df<-data.frame(D,C)
df$D<-as.factor(df$D)
ask1<-df[order(-df$C),]
ask1f<-head(ask1,n=5)


pregunta2ED<-ggplot(data=ask1f, aes(x=reorder(D,-C), y=C, fill=D)) +
  geom_bar(stat="identity", position=position_dodge())+
  geom_text(aes(label=C), vjust=1.6, color="black",
            position = position_dodge(0.9), size=3.5)+
  labs(title="Maximo de bodas registradas en un dia ", x="Dia", y="Cantidad de bodas")+theme(legend.position="none")



