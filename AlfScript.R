library(haven)
library(dplyr)
library(tidyverse)
library(magrittr)
library(plyr)

#Ordenamiento de la base de datos de matrimonio del ano 2013
path = file.path( "matrimonio2013.sav")
db2013 = read_sav(path)

dep_reg<-db2013[,'DEPREG']
mun_reg<-db2013[,'MUPREG']
mes_reg<-db2013[,'MESREG']
ano_reg<-db2013[,'AÑOREG']
clase_uni<-db2013[,'CLAUNI']
edad_M<-db2013[,'EDADHOM']
edad_F<-db2013[,'EDADMUJ']
et_M<-db2013[,'PUEHOM']
et_F<-db2013[,'PUEMUJ']
nac_M<-db2013[,'NACHOM']
nac_F<-db2013[,'NACMUJ']
esc_M<-db2013[,'ESCHOM']
esc_F<-db2013[,'ESCMUJ']
ocup_M<-db2013[,'CIUOHOM']
ocup_F<-db2013[,'CIUOMUJ']
dep_ocu<-db2013[,'DEPOCU']
mun_ocu<-db2013[,'MUPOCU']
dia_ocu<-db2013[,'DIAOCU']
mes_ocu<-db2013[,'MESOCU']


data2013<-data.frame(dep_reg,mun_reg,mes_reg,ano_reg,clase_uni,edad_M,edad_F,et_M,et_F,nac_M,nac_F,esc_M,esc_F,ocup_M,ocup_F,dep_ocu,mun_ocu,dia_ocu,mes_ocu)
ocup_M %>% mutate(ocup_M=as.character(ocup_M))
colnames(data2013)<-c('Departamento de registro','Municipio de registro','Mes de registro','Año de registro','Clase de union','Edad del hombre','Edad de la mujer','Grupo etnico del hombre','Grupo etnico de la mujer','Nacionalidad del hombre','Nacionalidad de la mujer','Escolaridad del hombre','Escolaridad de la mujer','Ocupacion del hombre','Ocupacion de la mujer','Departamento de ocurrencia','Municipio de ocurrencia','Dia de ocurrencia','Mes de ocurrencia')
View(data2013)

#Ordenamiento de la base de datos de matrimonio del ano 2014
path = file.path("matrimonio2014.sav")
db2014 = read_sav(path)


dep_reg<-db2014[,'DEPREG']
mun_reg<-db2014[,'MUPREG']
mes_reg<-db2014[,'MESREG']
ano_reg<-db2014[,'AÑOREG']
clase_uni<-db2014[,'CLAUNI']
edad_M<-db2014[,'EDADHOM']
edad_F<-db2014[,'EDADMUJ']
et_M<-db2014[,'PUEHOM']
et_F<-db2014[,'PUEMUJ']
nac_M<-db2014[,'NACHOM']
nac_F<-db2014[,'NACMUJ']
esc_M<-db2014[,'ESCHOM']
esc_F<-db2014[,'ESCMUJ']
ocup_M<-db2014[,'CIUOHOM']
ocup_F<-db2014[,'CIUOMUJ']
dep_ocu<-db2014[,'DEPOCU']
mun_ocu<-db2014[,'MUPOCU']
dia_ocu<-db2014[,'DIAOCU']
mes_ocu<-db2014[,'MESOCU']


data2014<-data.frame(dep_reg, mun_reg, mes_reg, ano_reg, clase_uni, edad_M, edad_F, et_M, et_F, nac_M, nac_F, esc_M, esc_F, ocup_M, ocup_F, dep_ocu, mun_ocu, dia_ocu, mes_ocu)
colnames(data2014)<-c('Departamento de registro','Municipio de registro','Mes de registro','Año de registro','Clase de union','Edad del hombre','Edad de la mujer','Grupo etnico del hombre','Grupo etnico de la mujer','Nacionalidad del hombre','Nacionalidad de la mujer','Escolaridad del hombre','Escolaridad de la mujer','Ocupacion del hombre','Ocupacion de la mujer','Departamento de ocurrencia','Municipio de ocurrencia','Dia de ocurrencia','Mes de ocurrencia')
View(data2014)




#Ordenamiento de la base de datos de matrimonio del ano 2015
path = file.path( "matrimonio2015.sav")
db2015 = read_sav(path)

dep_reg<-db2015[,'DEPREG']
mun_reg<-db2015[,'MUPREG']
mes_reg<-db2015[,'MESREG']
ano_reg<-db2015[,'AÑOREG']
clase_uni<-db2015[,'CLAUNI']
edad_M<-db2015[,'EDADHOM']
edad_F<-db2015[,'EDADMUJ']
et_M<-db2015[,'PUEHOM']
et_F<-db2015[,'PUEMUJ']
nac_M<-db2015[,'NACHOM']
nac_F<-db2015[,'NACMUJ']
esc_M<-db2015[,'ESCHOM']
esc_F<-db2015[,'ESCMUJ']
ocup_M<-db2015[,'CIUOHOM']
ocup_F<-db2015[,'CIUOMUJ']
dep_ocu<-db2015[,'DEPOCU']
mun_ocu<-db2015[,'MUPOCU']
dia_ocu<-db2015[,'DIAOCU']
mes_ocu<-db2015[,'MESOCU']
ano_ocu<-db2015[,'AÑOOCU']

str(ocup_M)

data2015<-data.frame(dep_reg,mun_reg,mes_reg,ano_reg,clase_uni,edad_M,edad_F,et_M,et_F,nac_M,nac_F,esc_M,esc_F,ocup_M,ocup_F,dep_ocu,mun_ocu,dia_ocu,mes_ocu,ano_ocu)
colnames(data2015)<-c('Departamento de registro','Municipio de registro','Mes de registro','Año de registro','Clase de union','Edad del hombre','Edad de la mujer','Grupo etnico del hombre','Grupo etnico de la mujer','Nacionalidad del hombre','Nacionalidad de la mujer','Escolaridad del hombre','Escolaridad de la mujer','Ocupacion del hombre','Ocupacion de la mujer','Departamento de ocurrencia','Municipio de ocurrencia','Dia de ocurrencia','Mes de ocurrencia','Año de ocurrencia')
View(data2015)


d2<-full_join(data2013, data2014)
data13_15<-full_join(d2, data2015)

View(data13_15)































