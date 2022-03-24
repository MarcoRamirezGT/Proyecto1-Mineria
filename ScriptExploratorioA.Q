library(tidyverse)
library(ggplot2)

db <- readRDS("db10_20.rds")
View(db)


# Pregunta 1: Cual es el departamento con mas bodas?
dep<-db[,'Departamento de ocurrencia']
View(dep)
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



# Pregunta 2:  Cual es el mes con mas bodas
meso<-db[,'Mes de ocurrencia']
mesocu<-subset(meso, select=c('Mes de ocurrencia'),db$`Mes de ocurrencia` != 0)
mes1<-data.frame(mesocu)
mcb<-aggregate(mes1$meso, mes1, length)

Mes<-c(mcb$mesocu)
Cantidad<-c(mcb$x)
df1<-data.frame(Mes,Cantidad)
df1$Mes<-as.factor(df1$Mes)


ggplot(data=df1, aes(x=reorder(Mes,Cantidad), y=Cantidad, fill=Mes)) +
  geom_bar(stat="identity", position=position_dodge())+
  geom_text(aes(label=Cantidad), vjust=1.6, color="black",
            position = position_dodge(0.9), size=3.5)+
  labs(title="Mes en el con mayores bodas registradas  ", x="Mes", y="Cantidad")+theme(legend.position="none")


# Pregunta 3:  Porcentaje de clase de union por año

#ano10<-db[db$`Año de registro` == 2010, ]
#anof102<-replace(ano10$`Clase de union`, ano10$`Clase de union`==999, NA) 
#anof102<-round(anof10, digits = 0)

#View(anof102)



ano10<-db[db$`Año de registro` == 2010, ]
anof10<-mean(replace(ano10$`Clase de union`, ano10$`Clase de union`==999, NA), na.rm = TRUE)
anof10<-round(anof10, digits = 0)
#2011
ano11<-db[db$`Año de registro` == 2011, ]
anof11<-mean(replace(ano11$`Clase de union`, ano11$`Clase de union`==999, NA), na.rm = TRUE)
anof11<-round(anof11, digits = 0)
#2012
ano12<-db[db$`Año de registro` == 2012, ]
anof12<-mean(replace(ano12$`Clase de union`, ano12$`Clase de union`==999, NA), na.rm = TRUE)
anof12<-round(anof12, digits = 0)
#2013
ano13<-db[db$`Año de registro` == 2013, ]
anof13<-mean(replace(ano13$`Clase de union`, ano13$`Clase de union`==999, NA), na.rm = TRUE)
anof13<-round(anof13, digits = 0)
#2014
ano14<-db[db$`Año de registro` == 2014, ]
anof14<-mean(replace(ano14$`Clase de union`, ano14$`Clase de union`==999, NA), na.rm = TRUE)
anof14<-round(anof14, digits = 0)
#2015
ano15<-db[db$`Año de registro` == 2015, ]
anof15<-mean(replace(ano15$`Clase de union`, ano15$`Clase de union`==999, NA), na.rm = TRUE)
anof15<-round(anof15, digits = 0)
#2016
ano16<-db[db$`Año de registro` == 2016, ]
anof16<-mean(replace(ano16$`Clase de union`, ano16$`Clase de union`==999, NA), na.rm = TRUE)
anof16<-round(anof16, digits = 0)
#2017
ano17<-db[db$`Año de registro` == 2017, ]
anof17<-mean(replace(ano17$`Clase de union`, ano17$`Clase de union`==999, NA), na.rm = TRUE)
anof17<-round(anof17, digits = 0)
#2018
ano18<-db[db$`Año de registro` == 2018, ]
anof18<-mean(replace(ano18$`Clase de union`, ano18$`Clase de union`==999, NA), na.rm = TRUE)
anof18<-round(anof18, digits = 0)
#2019
ano19<-db[db$`Año de registro` == 2019, ]
anof19<-mean(replace(ano19$`Clase de union`, ano19$`Clase de union`==999, NA), na.rm = TRUE)
anof19<-round(anof19, digits = 0)
#2020
ano20<-db[db$`Año de registro` == 2020, ]
anof20<-mean(replace(ano20$`Clase de union`, ano20$`Clase de union`==999, NA), na.rm = TRUE)
anof20<-round(anof20, digits = 0)

UnionPromedio<-c(anof10,anof11,anof12,anof13,anof14,anof15,anof16,anof17,anof18,anof19,anof20)
Año<-c(2010,2011,2012,2013,2014,2015,2016,2017,2018,2019,2020)

df2<-data.frame(UnionPromedio,Año)

df2$Año<-as.factor(df2$Año)
ggplot(data=df2, aes(x=Año, y=UnionPromedio, fill=UnionPromedio)) +
  geom_bar(stat="identity", position=position_dodge())+
  geom_text(aes(label=UnionPromedio), vjust=1.6, color="black",
            position = position_dodge(0.9), size=3.5)




# Pregunta 4:  Pocentaje de escolaridad por año
ano10<-db[db$`Año de registro` == 2010, ]
EstuM10<-mean(replace(ano10$`Escolaridad de la mujer`, ano10$`Edad de la mujer`==999, NA), na.rm = TRUE)
EstuH10<-mean(replace(ano10$`Escolaridad del hombre`, ano10$`Edad del hombre`==999, NA), na.rm = TRUE)
EstuM10<-round(EstuM10, digits = 0)
EstuH10<-round(EstuH10, digits = 0)

#2011
ano11<-db[db$`Año de registro` == 2011, ]
EstuM11<-mean(replace(ano11$`Escolaridad de la mujer`, ano11$`Edad de la mujer`==999, NA), na.rm = TRUE)
EstuH11<-mean(replace(ano11$`Escolaridad del hombre`, ano11$`Edad del hombre`==999, NA), na.rm = TRUE)
EstuM11<-round(EstuM11, digits = 0)
EstuH11<-round(EstuH11, digits = 0)
#2012
ano12<-db[db$`Año de registro` == 2012, ]
EstuM12<-mean(replace(ano12$`Escolaridad de la mujer`, ano12$`Edad de la mujer`==999, NA), na.rm = TRUE)
EstuH12<-mean(replace(ano12$`Escolaridad del hombre`, ano12$`Edad del hombre`==999, NA), na.rm = TRUE)
EstuM12<-round(EstuM12, digits = 0)
EstuH12<-round(EstuH12, digits = 0)
#2013
ano13<-db[db$`Año de registro` == 2013, ]
EstuM13<-mean(replace(ano13$`Escolaridad de la mujer`, ano13$`Edad de la mujer`==999, NA), na.rm = TRUE)
EstuH13<-mean(replace(ano13$`Escolaridad del hombre`, ano13$`Edad del hombre`==999, NA), na.rm = TRUE)
EstuM13<-round(EstuM13, digits = 0)
EstuH13<-round(EstuH13, digits = 0)
#2014
ano14<-db[db$`Año de registro` == 2014, ]
EstuM14<-mean(replace(ano14$`Escolaridad de la mujer`, ano14$`Edad de la mujer`==999, NA), na.rm = TRUE)
EstuH14<-mean(replace(ano14$`Escolaridad del hombre`, ano14$`Edad del hombre`==999, NA), na.rm = TRUE)
EstuM14<-round(EstuM14, digits = 0)
EstuH14<-round(EstuH14, digits = 0)
#2015
ano15<-db[db$`Año de registro` == 2015, ]
EstuM15<-mean(replace(ano15$`Escolaridad de la mujer`, ano15$`Edad de la mujer`==999, NA), na.rm = TRUE)
EstuH15<-mean(replace(ano15$`Escolaridad del hombre`, ano15$`Edad del hombre`==999, NA), na.rm = TRUE)
EstuM15<-round(EstuM15, digits = 0)
EstuH15<-round(EstuH15, digits = 0)
#2016
ano16<-db[db$`Año de registro` == 2016, ]
EstuM16<-mean(replace(ano16$`Escolaridad de la mujer`, ano16$`Edad de la mujer`==999, NA), na.rm = TRUE)
EstuH16<-mean(replace(ano16$`Escolaridad del hombre`, ano16$`Edad del hombre`==999, NA), na.rm = TRUE)
EstuM16<-round(EstuM16, digits = 0)
EstuH16<-round(EstuH16, digits = 0)
#2017
ano17<-db[db$`Año de registro` == 2017, ]
EstuM17<-mean(replace(ano17$`Escolaridad de la mujer`, ano17$`Edad de la mujer`==999, NA), na.rm = TRUE)
EstuH17<-mean(replace(ano17$`Escolaridad del hombre`, ano17$`Edad del hombre`==999, NA), na.rm = TRUE)
EstuM17<-round(EstuM17, digits = 0)
EstuH17<-round(EstuH17, digits = 0)
#2018
ano18<-db[db$`Año de registro` == 2018, ]
EstuM18<-mean(replace(ano18$`Escolaridad de la mujer`, ano18$`Edad de la mujer`==999, NA), na.rm = TRUE)
EstuH18<-mean(replace(ano18$`Escolaridad del hombre`, ano18$`Edad del hombre`==999, NA), na.rm = TRUE)
EstuM18<-round(EstuM18, digits = 0)
EstuH18<-round(EstuH18, digits = 0)
#2019
ano19<-db[db$`Año de registro` == 2019, ]
EstuM19<-mean(replace(ano19$`Escolaridad de la mujer`, ano19$`Edad de la mujer`==999, NA), na.rm = TRUE)
EstuH19<-mean(replace(ano19$`Escolaridad del hombre`, ano19$`Edad del hombre`==999, NA), na.rm = TRUE)
EstuM19<-round(EstuM19, digits = 0)
EstuH19<-round(EstuH19, digits = 0)
#2020
ano20<-db[db$`Año de registro` == 2020, ]
EstuM20<-mean(replace(ano20$`Escolaridad de la mujer`, ano20$`Edad de la mujer`==999, NA), na.rm = TRUE)
EstuH20<-mean(replace(ano20$`Escolaridad del hombre`, ano20$`Edad del hombre`==999, NA), na.rm = TRUE)
EstuM20<-round(EstuM10, digits = 0)
EstuH20<-round(EstuH10, digits = 0)

Sexo<-c('Mujer','Hombre','Mujer','Hombre','Mujer','Hombre','Mujer','Hombre','Mujer','Hombre','Mujer','Hombre','Mujer','Hombre','Mujer','Hombre','Mujer','Hombre','Mujer','Hombre','Mujer','Hombre')
EscoPromedio<-c(EstuM10,EstuH10,EstuM11,EstuH11,EstuM12,EstuH12,EstuM13,EstuH13,EstuM14,EstuH14,EstuM15,EstuH15,EstuM16,EstuH16,EstuM17,EstuH17,EstuM18,EstuH18,EstuM19,EstuH19,EstuM20,EstuH20)
Año<-c(2010	,2010,2011,2011,	2012,2012	,2013,2013	,2014,2014 ,	2015,2015	,2016,2016,	2017,2017,	2018,2018	,2019,2019	,2020,2020)

df3<-data.frame(Sexo, EscoPromedio,Año)

df3$Año<-as.factor(df3$Año)
ggplot(data=df3, aes(x=Año, y=EscoPromedio, fill=Sexo)) +
  geom_bar(stat="identity", position=position_dodge())+
  geom_text(aes(label=EscoPromedio), vjust=1.6, color="black",
            position = position_dodge(0.9), size=3.5)







# Pregunta 5:  Cual es la clase de union mas utilizado en Guatemala
clasi<-db[,'Clase de union']
clas<-subset(clasi, select=c('Clase de union'),db$`Clase de union` != 0)
clas1<-data.frame(clas)
cu<-aggregate(clas1$clas, clas1, length)


Uniones<-c(cu$clas)
CantidadU<-c(cu$x)
df<-data.frame(Uniones,CantidadU)
df$Uniones<-as.factor(df$Uniones)
ggplot(data=df, aes(x=Uniones, y=CantidadU, fill=Uniones)) +
  geom_bar(stat="identity", position=position_dodge())+
  geom_text(aes(label=CantidadU), vjust=1.6, color="black",
            position = position_dodge(0.9), size=3.5)




