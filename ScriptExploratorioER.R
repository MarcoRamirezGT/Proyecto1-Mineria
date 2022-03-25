library(tidyverse)

db <- readRDS("db10_20.rds")

#Cantidad de extranjeros registrados en Guatemala


hombres_ext<-subset(db, select=c('Nacionalidad del hombre'),db$`Nacionalidad del hombre`!=320)
hombres<-nrow(hombres_ext)
hombres

mujeres_ext<-subset(db, select=c('Nacionalidad de la mujer'),db$`Nacionalidad de la mujer`!=320)
mujeres<-nrow(mujeres_ext)
mujeres

extranjerosgt<-(mujeres+hombres)
extranjerosgt

df<-data.frame("Hombres Extranjeros"=hombres, "Mujeres extranjeras"=mujeres, "Total"=extranjerosgt)

view(df)

