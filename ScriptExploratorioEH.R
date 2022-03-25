library(tidyverse)
library(ggplot2)


db<-readRDS("db10_20.rds")
summary(db)


#Pregunta 1
#Top 5 municipios con mas bodas
mun<-db[,'Municipio de ocurrencia']
muni<-data.frame(mun)
nmun<-aggregate(muni$mun, muni, length)

Municipio<-c(nmun$mun)
CantidadMa<-c(nmun$x)
df<-data.frame(Municipio,CantidadMa)
df$Municipio<-as.factor(df$Municipio)
df<-head(df, n=5)

ggplot(data=df, aes(x=reorder(Municipio,CantidadMa), y=CantidadMa, fill=Municipio)) +
  geom_bar(stat="identity", position=position_dodge())+
  geom_text(aes(label=CantidadMa), vjust=1.6, color="black",
            position = position_dodge(0.9), size=3.5)+
  labs(title="Top 5 municipios con mas bodas", x="Municipio", y="Cantidad registrada ")+theme(legend.position="none")


#Pregunta 2
#Top 5 municipios con menos bodas
mun<-db[,'Municipio de ocurrencia']
muni<-data.frame(mun)
nmun<-aggregate(muni$mun, muni, length)

Municipio<-c(nmun$mun)
CantidadMa<-c(nmun$x)
df2<-data.frame(Municipio,CantidadMa)
df2<-df2[order(df2$CantidadMa), ]
df2$Municipio<-as.factor(df2$Municipio)
df2<-head(df2, n=5)

ggplot(data=df2, aes(x=reorder(Municipio,CantidadMa), y=CantidadMa, fill=Municipio)) +
  geom_bar(stat="identity", position=position_dodge())+
  geom_text(aes(label=CantidadMa), vjust=1.6, color="black",
            position = position_dodge(0.9), size=3.5)+
  labs(title="Top 5 municipios con menos bodas", x="Municipio", y="Cantidad registrada ")+theme(legend.position="none")


#Pregunta 3
#Cantidad de hombres que pertenecen a cada etnia
EtniaH<-subset(db, select=c('Grupo etnico del hombre'))
EtniaHCantidad<-nrow(EtniaH)

EtnH<-EtniaH %>%
  group_by(`Grupo etnico del hombre`) %>%
  tally()

EtniaHombre<-c(EtnH$`Grupo etnico del hombre`)
CantidadEtniaHombre<-c(EtnH$n)

EtnH<-data.frame(EtniaHombre,CantidadEtniaHombre)
EtnH$EtniaHombre<-as.factor(EtnH$EtniaHombre)

EtnH[1]<-c('Maya','Garifuna','Xinka','Mestizo/Ladino','Otro','Ignorado')

#Pie chart
pd<-round(((CantidadEtniaHombre*100)/sum(EtnH$CantidadEtniaHombre)),digits = 2)

ggplot(EtnH, aes(x = "", y = pd, fill = EtniaHombre)) +
  geom_col(color = "black") +
  geom_label(aes(label = pd),
             position = position_stack(vjust = 0.5),
             show.legend = FALSE) +
  coord_polar(theta = "y")+theme(legend.position = "bottom")+
  labs(title="Porcentaje de hombres que pertenecen a cada etnia")


#Pregunta 4
#Cantidad de mujeres que pertenecen a cada etnia
EtniaM<-subset(db, select=c('Grupo etnico de la mujer'))
EtniaMCantidad<-nrow(EtniaM)

EtnM<-EtniaM %>%
  group_by(`Grupo etnico de la mujer`) %>%
  tally()

EtniaMujer<-c(EtnM$`Grupo etnico de la mujer`)
CantidadEtniaMujer<-c(EtnM$n)

EtnM<-data.frame(EtniaMujer,CantidadEtniaMujer)
EtnM$EtniaMujer<-as.factor(EtnM$EtniaMujer)

EtnM[1]<-c('Maya','Garifuna','Xinka','Mestizo/Ladino','Otro','Ignorado')

#Pie chart
pd<-round(((CantidadEtniaMujer*100)/sum(EtnM$CantidadEtniaMujer)),digits = 2)

ggplot(EtnM, aes(x = "", y = pd, fill = EtniaMujer)) +
  geom_col(color = "black") +
  geom_label(aes(label = pd),
             position = position_stack(vjust = 0.5),
             show.legend = FALSE) +
  coord_polar(theta = "y")+theme(legend.position = "bottom")+
  labs(title="Porcentaje de mujeres que pertenecen a cada etnia")


#Pregunta 5
#Pocentaje de etnias por año
ano10<-db[db$`Año de registro` == 2010, ]
EtnM10<-mean(replace(ano10$`Grupo etnico de la mujer`, ano10$`Edad de la mujer`==999, NA), na.rm = TRUE)
EtnH10<-mean(replace(ano10$`Grupo etnico del hombre`, ano10$`Edad del hombre`==999, NA), na.rm = TRUE)
EtnM10<-round(EtnM10, digits = 0)
EtnH10<-round(EtnH10, digits = 0)

#2011
ano11<-db[db$`Año de registro` == 2011, ]
EtnM11<-mean(replace(ano11$`Grupo etnico de la mujer`, ano11$`Edad de la mujer`==999, NA), na.rm = TRUE)
EtnH11<-mean(replace(ano11$`Grupo etnico del hombre`, ano11$`Edad del hombre`==999, NA), na.rm = TRUE)
EtnM11<-round(EtnM11, digits = 0)
EtnH11<-round(EtnH11, digits = 0)
#2012
ano12<-db[db$`Año de registro` == 2012, ]
EtnM12<-mean(replace(ano12$`Grupo etnico de la mujer`, ano12$`Edad de la mujer`==999, NA), na.rm = TRUE)
EtnH12<-mean(replace(ano12$`Grupo etnico del hombre`, ano12$`Edad del hombre`==999, NA), na.rm = TRUE)
EtnM12<-round(EtnM12, digits = 0)
EtnH12<-round(EtnH12, digits = 0)
#2013
ano13<-db[db$`Año de registro` == 2013, ]
EtnM13<-mean(replace(ano13$`Grupo etnico de la mujer`, ano13$`Edad de la mujer`==999, NA), na.rm = TRUE)
EtnH13<-mean(replace(ano13$`Grupo etnico del hombre`, ano13$`Edad del hombre`==999, NA), na.rm = TRUE)
EtnM13<-round(EtnM13, digits = 0)
EtnH13<-round(EtnH13, digits = 0)
#2014
ano14<-db[db$`Año de registro` == 2014, ]
EtnM14<-mean(replace(ano14$`Grupo etnico de la mujer`, ano14$`Edad de la mujer`==999, NA), na.rm = TRUE)
EtnH14<-mean(replace(ano14$`Grupo etnico del hombre`, ano14$`Edad del hombre`==999, NA), na.rm = TRUE)
EtnM14<-round(EtnM14, digits = 0)
EtnH14<-round(EtnH14, digits = 0)
#2015
ano15<-db[db$`Año de registro` == 2015, ]
EtnM15<-mean(replace(ano15$`Grupo etnico de la mujer`, ano15$`Edad de la mujer`==999, NA), na.rm = TRUE)
EtnH15<-mean(replace(ano15$`Grupo etnico del hombre`, ano15$`Edad del hombre`==999, NA), na.rm = TRUE)
EtnM15<-round(EtnM15, digits = 0)
EtnH15<-round(EtnH15, digits = 0)
#2016
ano16<-db[db$`Año de registro` == 2016, ]
EtnM16<-mean(replace(ano16$`Grupo etnico de la mujer`, ano16$`Edad de la mujer`==999, NA), na.rm = TRUE)
EtnH16<-mean(replace(ano16$`Grupo etnico del hombre`, ano16$`Edad del hombre`==999, NA), na.rm = TRUE)
EtnM16<-round(EtnM16, digits = 0)
EtnH16<-round(EtnH16, digits = 0)
#2017
ano17<-db[db$`Año de registro` == 2017, ]
EtnM17<-mean(replace(ano17$`Grupo etnico de la mujer`, ano17$`Edad de la mujer`==999, NA), na.rm = TRUE)
EtnH17<-mean(replace(ano17$`Grupo etnico del hombre`, ano17$`Edad del hombre`==999, NA), na.rm = TRUE)
EtnM17<-round(EtnM17, digits = 0)
EtnH17<-round(EtnH17, digits = 0)
#2018
ano18<-db[db$`Año de registro` == 2018, ]
EtnM18<-mean(replace(ano18$`Grupo etnico de la mujer`, ano18$`Edad de la mujer`==999, NA), na.rm = TRUE)
EtnH18<-mean(replace(ano18$`Grupo etnico del hombre`, ano18$`Edad del hombre`==999, NA), na.rm = TRUE)
EtnM18<-round(EtnM18, digits = 0)
EtnH18<-round(EtnH18, digits = 0)
#2019
ano19<-db[db$`Año de registro` == 2019, ]
EtnM19<-mean(replace(ano19$`Grupo etnico de la mujer`, ano19$`Edad de la mujer`==999, NA), na.rm = TRUE)
EtnH19<-mean(replace(ano19$`Grupo etnico del hombre`, ano19$`Edad del hombre`==999, NA), na.rm = TRUE)
EtnM19<-round(EtnM19, digits = 0)
EtnH19<-round(EtnH19, digits = 0)
#2020
ano20<-db[db$`Año de registro` == 2020, ]
EtnM20<-mean(replace(ano20$`Grupo etnico de la mujer`, ano20$`Edad de la mujer`==999, NA), na.rm = TRUE)
EtnH20<-mean(replace(ano20$`Grupo etnico del hombre`, ano20$`Edad del hombre`==999, NA), na.rm = TRUE)
EtnM20<-round(EtnM20, digits = 0)
EtnH20<-round(EtnH20, digits = 0)

Sexo<-c('Mujer','Hombre','Mujer','Hombre','Mujer','Hombre','Mujer','Hombre','Mujer','Hombre','Mujer','Hombre','Mujer','Hombre','Mujer','Hombre','Mujer','Hombre','Mujer','Hombre','Mujer','Hombre')
EtnPromedio<-c(EtnM10,EtnH10,EtnM11,EtnH11,EtnM12,EtnH12,EtnM13,EtnH13,EtnM14,EtnH14,EtnM15,EtnH15,EtnM16,EtnH16,EtnM17,EtnH17,EtnM18,EtnH18,EtnM19,EtnH19,EtnM20,EtnH20)
Año<-c(2010	,2010,2011,2011,	2012,2012	,2013,2013	,2014,2014 ,	2015,2015	,2016,2016,	2017,2017,	2018,2018	,2019,2019	,2020,2020)

df5<-data.frame(Sexo, EtnPromedio, Año)

df5$Año<-as.factor(df5$Año)
ggplot(data=df5, aes(x=Año, y=EtnPromedio, fill=Sexo)) +
  geom_bar(stat="identity", position=position_dodge())+
  geom_text(aes(label=EtnPromedio), vjust=1.6, color="black",
            position = position_dodge(0.9), size=3.5)


#Pregunta 6
#Porcentaje de bodas entre misma etnia
EtnMu<-db[,'Grupo etnico de la mujer']
EtnHo<-db[,'Grupo etnico del hombre']
df6<-data.frame(EtnMu,EtnHo)

df6$Iguales <- ifelse (df6$EtnMu == df6$EtnHo , 'V',
  ifelse (df6$EtnMu != df6$EtnHo , 'F', 'N'))

mismaEtnia<-df6 %>%
  group_by(`Iguales`) %>%
  tally()

igual<-c(mismaEtnia$`Iguales`)
CantidadIgual<-c(mismaEtnia$n)

mismaEtnia<-data.frame(igual,CantidadIgual)
mismaEtnia$igual<-as.factor(mismaEtnia$igual)
mismaEtnia[1]<-c('Diferente Etnia','Misma Etnia')

#Pie chart
pe<-round(((CantidadIgual*100)/sum(mismaEtnia$CantidadIgual)),digits = 2)

ggplot(mismaEtnia, aes(x = "", y = pe, fill = igual)) +
  geom_col(color = "black") +
  geom_label(aes(label = pe),
             position = position_stack(vjust = 0.5),
             show.legend = FALSE) +
  coord_polar(theta = "y")+theme(legend.position = "bottom")+
  labs(title="Porcentaje de bodas entre misma etnia")
