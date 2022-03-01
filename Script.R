library(haven)
library(dplyr)
library(tidyverse)
library(magrittr)

#Ordenamiento de la base de datos de matrimonio del ano 2016
path = file.path( "matrimonio2016.sav")
db2016 = read_sav(path)

dep_reg<-db2016[,'DEPREG']
mun_reg<-db2016[,'MUPREG']
mes_reg<-db2016[,'MESREG']
ano_reg<-db2016[,'AÑOREG']
clase_uni<-db2016[,'CLAUNI']
edad_M<-db2016[,'EDADHOM']
edad_F<-db2016[,'EDADMUJ']
et_M<-db2016[,'PUEHOM']
et_F<-db2016[,'PUEMUJ']
nac_M<-db2016[,'NACHOM']
nac_F<-db2016[,'NACMUJ']
esc_M<-db2016[,'ESCHOM']
esc_F<-db2016[,'ESCMUJ']
ocup_M<-db2016[,'CIUOHOM']
ocup_F<-db2016[,'CIUOMUJ']
dep_ocu<-db2016[,'DEPOCU']
mun_ocu<-db2016[,'MUPOCU']
dia_ocu<-db2016[,'DIAOCU']
mes_ocu<-db2016[,'MESOCU']
ano_ocu<-db2016[,'AÑOOCU']



data2016<-data.frame(dep_reg,mun_reg,mes_reg,ano_reg,clase_uni,edad_M,edad_F,et_M,et_F,nac_M,nac_F,esc_M,esc_F,ocup_M,ocup_F,dep_ocu,mun_ocu,dia_ocu,mes_ocu,ano_ocu)

colnames(data2016)<-c('Departamento de registro','Municipio de registro','Mes de registro','Año de registro','Clase de union','Edad del hombre','Edad de la mujer','Grupo etnico del hombre','Grupo etnico de la mujer','Nacionalidad del hombre','Nacionalidad de la mujer','Escolaridad del hombre','Escolaridad de la mujer','Ocupacion del hombre','Ocupacion de la mujer','Departamento de ocurrencia','Municipio de ocurrencia','Dia de ocurrencia','Mes de ocurrencia','Año de ocurrencia')


#Ordenamiento de la base de datos de matrimonio del ano 2017
path = file.path( "matrimonio2017.sav")
db2017 = read_sav(path)


dep_reg<-db2017[,'DEPREG']
mun_reg<-db2017[,'MUPREG']
mes_reg<-db2017[,'MESREG']
ano_reg<-db2017[,'AÑOREG']
clase_uni<-db2017[,'CLAUNI']
edad_M<-db2017[,'EDADHOM']
edad_F<-db2017[,'EDADMUJ']
et_M<-db2017[,'PUEHOM']
et_F<-db2017[,'PUEMUJ']
nac_M<-db2017[,'NACHOM']
nac_F<-db2017[,'NACMUJ']
esc_M<-db2017[,'ESCHOM']
esc_F<-db2017[,'ESCMUJ']
ocup_M<-db2017[,'CIUOHOM']
ocup_F<-db2017[,'CIUOMUJ']
dep_ocu<-db2017[,'DEPOCU']
mun_ocu<-db2017[,'MUPOCU']
dia_ocu<-db2017[,'DIAOCU']
mes_ocu<-db2017[,'MESOCU']
ano_ocu<-db2017[,'AÑOOCU']


data2017<-data.frame(dep_reg,mun_reg,mes_reg,ano_reg,clase_uni,edad_M,edad_F,et_M,et_F,nac_M,nac_F,esc_M,esc_F,ocup_M,ocup_F,dep_ocu,mun_ocu,dia_ocu,mes_ocu,ano_ocu)

colnames(data2017)<-c('Departamento de registro','Municipio de registro','Mes de registro','Año de registro','Clase de union','Edad del hombre','Edad de la mujer','Grupo etnico del hombre','Grupo etnico de la mujer','Nacionalidad del hombre','Nacionalidad de la mujer','Escolaridad del hombre','Escolaridad de la mujer','Ocupacion del hombre','Ocupacion de la mujer','Departamento de ocurrencia','Municipio de ocurrencia','Dia de ocurrencia','Mes de ocurrencia','Año de ocurrencia')





#Ordenamiento de la base de datos de matrimonio del ano 2018
path = file.path( "matrimonio2018.sav")
db2018 = read_sav(path)


dep_reg<-db2018[,'DEPREG']
mun_reg<-db2018[,'MUPREG']
mes_reg<-db2018[,'MESREG']
ano_reg<-db2018[,'AÑOREG']
clase_uni<-db2018[,'CLAUNI']
edad_M<-db2018[,'EDADHOM']
edad_F<-db2018[,'EDADMUJ']
et_M<-db2018[,'PUEHOM']
et_F<-db2018[,'PUEMUJ']
nac_M<-db2018[,'NACHOM']
nac_F<-db2018[,'NACMUJ']
esc_M<-db2018[,'ESCHOM']
esc_F<-db2018[,'ESCMUJ']
ocup_M<-db2018[,'CIUOHOM']
ocup_F<-db2018[,'CIUOMUJ']
dep_ocu<-db2018[,'DEPOCU']
mun_ocu<-db2018[,'MUPOCU']
dia_ocu<-db2018[,'DIAOCU']
mes_ocu<-db2018[,'MESOCU']
ano_ocu<-db2018[,'AÑOOCU']


data2018<-data.frame(dep_reg,mun_reg,mes_reg,ano_reg,clase_uni,edad_M,edad_F,et_M,et_F,nac_M,nac_F,esc_M,esc_F,ocup_M,ocup_F,dep_ocu,mun_ocu,dia_ocu,mes_ocu,ano_ocu)

colnames(data2018)<-c('Departamento de registro','Municipio de registro','Mes de registro','Año de registro','Clase de union','Edad del hombre','Edad de la mujer','Grupo etnico del hombre','Grupo etnico de la mujer','Nacionalidad del hombre','Nacionalidad de la mujer','Escolaridad del hombre','Escolaridad de la mujer','Ocupacion del hombre','Ocupacion de la mujer','Departamento de ocurrencia','Municipio de ocurrencia','Dia de ocurrencia','Mes de ocurrencia','Año de ocurrencia')


d2<- full_join(data2016, data2018)
data16_18<-full_join(d2,data2017)

View(data16_18)
