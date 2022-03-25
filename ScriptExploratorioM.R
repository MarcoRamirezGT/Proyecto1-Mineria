library(tidyverse)

db <- readRDS("db10_20.rds")

#Edad promedio de las personas al casarse
summary(db$`Edad de la mujer`)
mean(db$`Edad de la mujer`)
summary(replace(db$`Edad de la mujer`, db$`Edad de la mujer`==999, NA), na.rm = TRUE)
summary(replace(db$`Edad del hombre`, db$`Edad del hombre`==999, NA), na.rm = TRUE)

names(db)

#Promedio de la edad de las mujeres en el ano 2010
ano10<-db[db$`Año de registro` == 2010, ]
edadM10<-mean(replace(ano10$`Edad de la mujer`, ano10$`Edad de la mujer`==999, NA), na.rm = TRUE)
edadH10<-mean(replace(ano10$`Edad del hombre`, ano10$`Edad del hombre`==999, NA), na.rm = TRUE)
edadM10<-round(edadM10, digits = 0)
edadH10<-round(edadH10, digits = 0)

#2011
ano11<-db[db$`Año de registro` == 2011, ]
edadM11<-mean(replace(ano11$`Edad de la mujer`, ano11$`Edad de la mujer`==999, NA), na.rm = TRUE)
edadH11<-mean(replace(ano11$`Edad del hombre`, ano11$`Edad del hombre`==999, NA), na.rm = TRUE)
edadM11<-round(edadM11, digits = 0)
edadH11<-round(edadH11, digits = 0)

#2012
ano12<-db[db$`Año de registro` == 2012, ]
edadM12<-mean(replace(ano12$`Edad de la mujer`, ano12$`Edad de la mujer`==999, NA), na.rm = TRUE)
edadH12<-mean(replace(ano12$`Edad del hombre`, ano12$`Edad del hombre`==999, NA), na.rm = TRUE)
edadM12<-round(edadM12, digits = 0)
edadH12<-round(edadH12, digits = 0)

#2013
ano13<-db[db$`Año de registro` == 2013, ]
edadM13<-mean(replace(ano13$`Edad de la mujer`, ano13$`Edad de la mujer`==999, NA), na.rm = TRUE)
edadH13<-mean(replace(ano13$`Edad del hombre`,  ano13$`Edad del hombre`==999, NA), na.rm = TRUE)
edadM13<-round(edadM13, digits = 0)
edadH13<-round(edadH13, digits = 0)

#2014
ano14<-db[db$`Año de registro` == 2014, ]
edadM14<-mean(replace(ano14$`Edad de la mujer`, ano14$`Edad de la mujer`==999, NA), na.rm = TRUE)
edadH14<-mean(replace(ano14$`Edad del hombre`,  ano14$`Edad del hombre`==999, NA), na.rm = TRUE)
edadM14<-round(edadM14, digits = 0)
edadH14<-round(edadH14, digits = 0)

#2015
ano15<-db[db$`Año de registro` == 2015, ]
edadM15<-mean(replace(ano15$`Edad de la mujer`, ano15$`Edad de la mujer`==999, NA), na.rm = TRUE)
edadH15<-mean(replace(ano15$`Edad del hombre`,  ano15$`Edad del hombre`==999, NA), na.rm = TRUE)
edadM15<-round(edadM15, digits = 0)
edadH15<-round(edadH15, digits = 0)

#2016
ano16<-db[db$`Año de registro` == 2016, ]
edadM16<-mean(replace(ano16$`Edad de la mujer`, ano16$`Edad de la mujer`==999, NA), na.rm = TRUE)
edadH16<-mean(replace(ano16$`Edad del hombre`,  ano16$`Edad del hombre`==999, NA), na.rm = TRUE)
edadM16<-round(edadM16, digits = 0)
edadH16<-round(edadH16, digits = 0)

#2017
ano17<-db[db$`Año de registro` == 2017, ]
edadM17<-mean(replace(ano17$`Edad de la mujer`, ano17$`Edad de la mujer`==999, NA), na.rm = TRUE)
edadH17<-mean(replace(ano17$`Edad del hombre`,  ano17$`Edad del hombre`==999, NA), na.rm = TRUE)
edadM17<-round(edadM17, digits = 0)
edadH17<-round(edadH17, digits = 0)

#2018
ano18<-db[db$`Año de registro` == 2018, ]
edadM18<-mean(replace(ano18$`Edad de la mujer`, ano18$`Edad de la mujer`==999, NA), na.rm = TRUE)
edadH18<-mean(replace(ano18$`Edad del hombre`,  ano18$`Edad del hombre`==999, NA), na.rm = TRUE)
edadM18<-round(edadM18, digits = 0)
edadH18<-round(edadH18, digits = 0)


#2019
ano19<-db[db$`Año de registro` == 2019, ]
edadM19<-mean(replace(ano19$`Edad de la mujer`, ano19$`Edad de la mujer`==999, NA), na.rm = TRUE)
edadH19<-mean(replace(ano19$`Edad del hombre`,  ano19$`Edad del hombre`==999, NA), na.rm = TRUE)
edadM19<-round(edadM19, digits = 0)
edadH19<-round(edadH19, digits = 0)


#2020
ano20<-db[db$`Año de registro` == 2020, ]
edadM20<-mean(replace(ano20$`Edad de la mujer`, ano20$`Edad de la mujer`==999, NA), na.rm = TRUE)
edadH20<-mean(replace(ano20$`Edad del hombre`,  ano20$`Edad del hombre`==999, NA), na.rm = TRUE)
edadM20<-round(edadM20, digits = 0)
edadH20<-round(edadH20, digits = 0)

Sexo<-c('Hombre','Mujer','Hombre','Mujer','Hombre','Mujer','Hombre','Mujer','Hombre','Mujer','Hombre','Mujer','Hombre','Mujer','Hombre','Mujer','Hombre','Mujer','Hombre','Mujer','Hombre','Mujer')
EdadPromedio<-c(edadH10,edadM10,edadH11,edadM11,edadH12,edadM12,edadH13,edadM13,edadH14,edadM14,edadH15,edadM15,edadH16,edadM16,edadH17,edadM17,edadH18,edadM18,edadH19,edadM19,edadH20,edadM20)
Año<-c(2010	,2010,2011,2011,	2012,2012	,2013,2013	,2014,2014 ,	2015,2015	,2016,2016,	2017,2017,	2018,2018	,2019,2019	,2020,2020)

ask1<-data.frame(Sexo,EdadPromedio,Año)

ask1$Año<-as.factor(ask1$Año)
pregunta1<-ggplot(data=ask1, aes(x=Año, y=EdadPromedio, fill=Sexo)) +
  geom_bar(stat="identity", position=position_dodge())+
  geom_text(aes(label=EdadPromedio), vjust=1.6, color="black",
            position = position_dodge(0.9), size=3.5)
  
pregunta1
#Matrimonios atipicos
db$`Escolaridad de la mujer`

edadPareja<-subset(db, select=c('Edad del hombre','Edad de la mujer','Escolaridad del hombre','Escolaridad de la mujer'),db$`Edad de la mujer`!=999 & db$`Edad del hombre`!=999)

edadPareja$Juntos <- NA
edadPareja$Juntos<-paste(edadPareja$`Edad del hombre`,edadPareja$`Edad de la mujer`)

ask2<-edadPareja %>%
  group_by(Juntos) %>%
  tally()


ask2<-ask2[order(-ask2$n),]
ask2o<-head(ask2,n=10)

pregunta2<-ggplot(data=ask2o, aes(x=reorder(Juntos,n), y=n, fill=Juntos)) +
  geom_bar(stat="identity", position=position_dodge())+
  geom_text(aes(label=n), vjust=1.6, color="black",
            position = position_dodge(0.9), size=3.5)+
  labs(title="Moda de las edades de las parejas en los 10 años registrados  ", x="Edades de las parejas", y="Cantidad de parejas ")


#Matrimonio entre menores de edad
edadParejaMenores<-subset(edadPareja, select=c('Edad del hombre','Edad de la mujer'),edadPareja$`Edad de la mujer`<18 & edadPareja$`Edad del hombre`<18)

cantidad<-nrow(edadParejaMenores)

pregunta3<-ggplot(data=edadParejaMenores, aes(x='Menores de edad', y=cantidad, fill=cantidad)) +
  geom_bar(stat="identity", position=position_dodge())+
  geom_text(aes(label=cantidad), vjust=1.6, color="black",
            position = position_dodge(0.9), size=3.5)+
  labs(title="Cantidad de matrimonios entre menores de edad", y="Cantidad de matrimonios ")+
  theme(legend.position="none")



#Matrimonio con menores de edad por año
edadParejaPorAno<-subset(db, select=c('Edad del hombre','Edad de la mujer','Año de registro'),db$`Edad de la mujer`<18 | db$`Edad del hombre`<18)
edadParejaPorAno<-subset(edadParejaPorAno, select=c('Edad del hombre','Edad de la mujer','Año de registro'),edadParejaPorAno$`Edad de la mujer`!=999 & edadParejaPorAno$`Edad del hombre`!=999)
nrow(edadParejaPorAno)

#2010
edadParejaPorAno10<-subset(edadParejaPorAno, select=c('Edad del hombre','Edad de la mujer','Año de registro'),edadParejaPorAno$`Año de registro`==2010)
nrow(edadParejaPorAno10)
#2011
edadParejaPorAno11<-subset(edadParejaPorAno, select=c('Edad del hombre','Edad de la mujer','Año de registro'),edadParejaPorAno$`Año de registro`==2011)
nrow(edadParejaPorAno11)
#2012
edadParejaPorAno12<-subset(edadParejaPorAno, select=c('Edad del hombre','Edad de la mujer','Año de registro'),edadParejaPorAno$`Año de registro`==2012)
nrow(edadParejaPorAno12)
#2013
edadParejaPorAno13<-subset(edadParejaPorAno, select=c('Edad del hombre','Edad de la mujer','Año de registro'),edadParejaPorAno$`Año de registro`==2013)
nrow(edadParejaPorAno13)
#2014
edadParejaPorAno14<-subset(edadParejaPorAno, select=c('Edad del hombre','Edad de la mujer','Año de registro'),edadParejaPorAno$`Año de registro`==2014)
nrow(edadParejaPorAno14)
#2015
edadParejaPorAno15<-subset(edadParejaPorAno, select=c('Edad del hombre','Edad de la mujer','Año de registro'),edadParejaPorAno$`Año de registro`==2015)
nrow(edadParejaPorAno15)
#2016
edadParejaPorAno16<-subset(edadParejaPorAno, select=c('Edad del hombre','Edad de la mujer','Año de registro'),edadParejaPorAno$`Año de registro`==2016)
nrow(edadParejaPorAno16)
#2017
edadParejaPorAno17<-subset(edadParejaPorAno, select=c('Edad del hombre','Edad de la mujer','Año de registro'),edadParejaPorAno$`Año de registro`==2017)
nrow(edadParejaPorAno17)
#2018
edadParejaPorAno18<-subset(edadParejaPorAno, select=c('Edad del hombre','Edad de la mujer','Año de registro'),edadParejaPorAno$`Año de registro`==2018)
nrow(edadParejaPorAno18)
#2019
edadParejaPorAno19<-subset(edadParejaPorAno, select=c('Edad del hombre','Edad de la mujer','Año de registro'),edadParejaPorAno$`Año de registro`==2019)
nrow(edadParejaPorAno19)
#2020
edadParejaPorAno20<-subset(edadParejaPorAno, select=c('Edad del hombre','Edad de la mujer','Año de registro'),edadParejaPorAno$`Año de registro`==2020)
nrow(edadParejaPorAno20)

Año_Registrado<-c(2010	,2011	,2012	,2013	,2014	,2015	,2016	,2017	,2018,	2019,	2020)
Cantidad_Matrimonios<-c(nrow(edadParejaPorAno10),nrow(edadParejaPorAno11),nrow(edadParejaPorAno12),nrow(edadParejaPorAno13),nrow(edadParejaPorAno14),nrow(edadParejaPorAno15),nrow(edadParejaPorAno16),nrow(edadParejaPorAno17),nrow(edadParejaPorAno18),nrow(edadParejaPorAno19),nrow(edadParejaPorAno20))

bodasMenores<-data.frame(Año_Registrado,Cantidad_Matrimonios)

bodasMenores$Año_Registrado<-as.factor(bodasMenores$Año_Registrado)

pregunta4<-ggplot(data=bodasMenores, aes(x=Año_Registrado, y=Cantidad_Matrimonios, fill=Año_Registrado)) +
  geom_bar(stat="identity", position=position_dodge())+
  geom_text(aes(label=Cantidad_Matrimonios), vjust=1.6, color="black",
            position = position_dodge(0.9), size=3.5)+
  labs(title="Cantidad de matrimonios con menores de edad por año",x='Año de registro' ,y="Cantidad de matrimonios ")+
  theme(legend.position="none")

#Matrimonio donde almenos uno es menor de edad

edadParejaAlMenosUnMenor<-subset(edadPareja, select=c('Edad del hombre','Edad de la mujer','Escolaridad del hombre','Escolaridad de la mujer'),edadPareja$`Edad de la mujer`<18 | edadPareja$`Edad del hombre`<18)
edadParejaAlMenosUnMenorCantidad<-nrow(edadParejaAlMenosUnMenor)



pregunta5<-ggplot(data=edadParejaAlMenosUnMenor, aes(x='Matrimonio', y=edadParejaAlMenosUnMenorCantidad, fill=edadParejaAlMenosUnMenorCantidad)) +
  geom_bar(stat="identity", position=position_dodge())+
  geom_text(aes(label=edadParejaAlMenosUnMenorCantidad), vjust=1.6, color="black",
            position = position_dodge(0.9), size=3.5)+
  labs(title="Cantidad de matrimonios con un menor de edad", y="Cantidad de matrimonios ")+
  theme(legend.position="none")

EscoH<-edadParejaAlMenosUnMenor %>%
  group_by(`Escolaridad del hombre`) %>%
  tally()


EscoM<-edadParejaAlMenosUnMenor %>%
  group_by(`Escolaridad de la mujer`) %>%
  tally()


EscolaridadHombre<-c(EscoH$`Escolaridad del hombre`)
CantidadEscolaridadHombre<-c(EscoH$n)

EscoH<-data.frame(EscolaridadHombre,CantidadEscolaridadHombre)
EscoH$EscolaridadHombre<-as.factor(EscoH$EscolaridadHombre)

EscolaridadMujer<-c(EscoM$`Escolaridad de la mujer`)
CantidadEscolaridadMujer<-c(EscoM$n)

EscoM<-data.frame(EscolaridadMujer,CantidadEscolaridadMujer)
EscoM$EscolaridadMujer<-as.factor(EscoM$EscolaridadMujer)




EscoH[1]<-c('Ninguno','Primaria','Basico','Diversificado','Universitario','Postgrado','Ignorado')
EscoM[1]<-c('Ninguno','Primaria','Basico','Diversificado','Universitario','Ignorado')

PreguntaEscolaridad<-ggplot(data=EscoH, aes(x=EscolaridadHombre, y=CantidadEscolaridadHombre,fill=EscolaridadHombre)) +
  geom_bar(stat="identity", position=position_dodge())+
  geom_text(aes(label=CantidadEscolaridadHombre), vjust=1.6, color="black",
            position = position_dodge(0.9), size=3.5)+
  labs(title="Escolaridad de los hombres con matrimonio", y="Cantidad de matrimonios ")+
  theme(legend.position="none")

#Pie chart
pd<-round(((CantidadEscolaridadHombre*100)/sum(EscoH$CantidadEscolaridadHombre)),digits = 2)


pieEscH<-ggplot(EscoH, aes(x = "", y = pd, fill = EscolaridadHombre)) +
  geom_col(color = "black") +
  geom_label(aes(label = pd),
             position = position_stack(vjust = 0.5),
             show.legend = FALSE) +
  coord_polar(theta = "y")+theme(legend.position = "bottom")+
  labs(title="Porcentaje de escolaridad de los hombres")
#Mujer



PreguntaEscolaridadMujer<-ggplot(data=EscoM, aes(x=EscolaridadMujer, y=CantidadEscolaridadMujer,fill=EscolaridadMujer)) +
  geom_bar(stat="identity", position=position_dodge())+
  geom_text(aes(label=CantidadEscolaridadMujer), vjust=1.6, color="black",
            position = position_dodge(0.9), size=3.5)+
  labs(title="Escolaridad de las mujeres", y="Cantidad")+
  theme(legend.position="none")
#Pie chart

pdM<-round(((CantidadEscolaridadMujer*100)/sum(EscoM$CantidadEscolaridadMujer)),digits = 2)


pieEscM<-ggplot(EscoM, aes(x = "", y = pdM, fill = EscolaridadMujer)) +
  geom_col(color = "black") +
  geom_label(aes(label = pdM),
             position = position_stack(vjust = 0.5),
             show.legend = FALSE) +
  coord_polar(theta = "y")+theme(legend.position = "bottom")+
  labs(title="Porcentaje de escolaridad de los hombres")



#Edad donde solo la mujer es menor
edadParejaMujerMenor<-subset(edadPareja, select=c('Edad del hombre','Edad de la mujer'),edadPareja$`Edad de la mujer`<18 & edadPareja$`Edad de la mujer`<edadPareja$`Edad del hombre`)
edadParejaMujerMenorCantidad<-nrow(edadParejaMujerMenor)


#Edad donde solo el hombre es menor
edadParejaHombreMenor<-subset(edadPareja, select=c('Edad del hombre','Edad de la mujer'),edadPareja$`Edad del hombre`<18 & edadPareja$`Edad del hombre`<edadPareja$`Edad de la mujer`)


edadParejaHombreMenorCantidad<-nrow(edadParejaHombreMenor)


EdadesPareja<-c('Hombre > Mujer','Mujer > Hombre','Hombre = Mujer')
Cantidad_Menores<-c(edadParejaMujerMenorCantidad,edadParejaHombreMenorCantidad,(edadParejaAlMenosUnMenorCantidad-(edadParejaMujerMenorCantidad+edadParejaHombreMenorCantidad)))
Porc_HM<-(edadParejaMujerMenorCantidad*100)/edadParejaAlMenosUnMenorCantidad
Porc_HM<-round(Porc_HM, digits = 2)
Porc_MH<-(edadParejaHombreMenorCantidad*100)/edadParejaAlMenosUnMenorCantidad
Porc_MH<-round(Porc_MH, digits = 2)
Porc_E<-((edadParejaAlMenosUnMenorCantidad-(edadParejaMujerMenorCantidad+edadParejaHombreMenorCantidad))*100)/edadParejaAlMenosUnMenorCantidad
Porc_E<-round(Porc_E, digits = 2)


Porcentaje<-c(Porc_HM,Porc_MH,Porc_E)
ask4<-data.frame(EdadesPareja,Cantidad_Menores,Porcentaje)


pregunta6<-ggplot(ask4, aes(x = "", y = Porcentaje, fill = EdadesPareja)) +
  geom_col(color = "black") +
  geom_label(aes(label = Porcentaje),
             position = position_stack(vjust = 0.8),
             show.legend = FALSE) +
  coord_polar(theta = "y")+theme(legend.position = "bottom")+
  labs(title="Porcentaje de matrimonios donde uno es menor de edad")

#Diferencia entre las edades



edadParejaAlMenosUnMenor$diff<-abs( edadParejaAlMenosUnMenor$`Edad del hombre`-edadParejaAlMenosUnMenor$`Edad de la mujer`)

diffMayor<-data.frame(c(edadParejaAlMenosUnMenor$diff))
colnames(diffMayor)[1]<-'Diferencia'
diffMayor<-diffMayor %>% arrange(desc(Diferencia))

diffMayorN<-head(diffMayor,n=5)



diffEdades<-ggplot(data=diffMayorN, aes(x=Diferencia, y=Diferencia,fill=Diferencia)) +
  geom_bar(stat="identity", position=position_dodge())+
  geom_text(aes(label=Diferencia), vjust=1.6, color="black",
            position = position_dodge(0.9), size=3.5)+
  labs(title="Diferencia de edades entre los matrimonios con un menor de edad", y="Diferencia de edades")+
  theme(legend.position="none")

#Group By
diffGroup<-diffMayor %>%
  group_by(Diferencia) %>%
  tally()


diffGroup<-head(diffGroup,n=7)
diffGroup$Diferencia<-as.factor(diffGroup$Diferencia)
diffEdadesG<-ggplot(data=diffGroup, aes(x=Diferencia, y=n,fill=Diferencia)) +
  geom_bar(stat="identity", position=position_dodge())+
  geom_text(aes(label=n), vjust=1.6, color="black",
            position = position_dodge(0.9), size=3.5)+
  labs(title="Cantidad de diferencia de edades", y="Diferencia de edades")+
  theme(legend.position="none")
#Tablas de frecuencia





#variables numericas
ggplot(data = db,aes(db$`Edad de la mujer`))+geom_histogram(bins=30)
ggplot(data = db,aes(db$`Edad del hombre`))+geom_histogram(bins=30)
#Variables categoricas

table(db$`Departamento de registro`)
table(db$`Municipio de registro`)
table(db$`Mes de registro`)
table(db$`Año de registro`)
table(db$`Clase de union`)
table(db$`Grupo etnico del hombre`)
table(db$`Grupo etnico de la mujer`)
table(db$`Grupo etnico del hombre`)
table(db$`Nacionalidad del hombre`)
table(db$`Escolaridad del hombre`)
table(db$`Escolaridad de la mujer`)
table(db$`Departamento de ocurrencia`)
table(db$`Dia de ocurrencia`)
table(db$`Mes de ocurrencia`)
table(db$`Año de ocurrencia`)
