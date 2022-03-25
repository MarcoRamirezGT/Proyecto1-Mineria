library(tidyverse)
library(ggplot2)

db <- readRDS("db10_20.rds")

#Cantidad de extranjeros registrados en Guatemala


hombres_ext<-subset(db, select=c('Nacionalidad del hombre'),db$`Nacionalidad del hombre`!=320)
hombres1<-nrow(hombres_ext)

mujeres_ext<-subset(db, select=c('Nacionalidad de la mujer'),db$`Nacionalidad de la mujer`!=320)
mujeres1<-nrow(mujeres_ext)

extran<-data.frame(hombres1, mujeres1)
extranjerosgtT<-(hombres1 + mujeres1)


View(extranjerosgtT)

df<-data.frame("Hombres y Mujeres"=extran, "Total"=extranjerosgtT)

df$Total<-as.factor(df$Total)
extran$hombres1<-as.factor(df$hombres1)

view(df)


ggplot(data=df, aes(x=reorder(extran,extranjerosgtT), y=extranjerosgtT, fill=extran)) +
  geom_bar(stat="identity", position=position_dodge())+
  geom_text(aes(label=extran), vjust=1.6, color="black",
            position = position_dodge(0.9), size=3.5)+
  labs(title="Cual es del departamento con mas bodas? ", x="Mes de registro", y="Cantidad registrada ")+theme(legend.position="none")