library(haven)
library(dplyr)
library(tidyverse)
library(magrittr)



#Ordenamiento de la base de datos de matrimonio del ano 2019
path = file.path( "matrimonio2019.sav")
db2019 = read_sav(path)


dep_reg<-db2019[,'DEPREG']
mun_reg<-db2019[,'MUPREG']
mes_reg<-db2019[,'MESREG']
ano_reg<-db2019[,'AÑOREG']
clase_uni<-db2019[,'CLAUNI']
edad_M<-db2019[,'EDADHOM']
edad_F<-db2019[,'EDADMUJ']
et_M<-db2019[,'PUEHOM']
et_F<-db2019[,'PUEMUJ']
nac_M<-db2019[,'NACHOM']
nac_F<-db2019[,'NACMUJ']
esc_M<-db2019[,'ESCHOM']
esc_F<-db2019[,'ESCMUJ']
ocup_M<-db2019[,'CIUOHOM']
ocup_F<-db2019[,'CIUOMUJ']
dep_ocu<-db2019[,'DEPOCU']
mun_ocu<-db2019[,'MUPOCU']
dia_ocu<-db2019[,'DIAOCU']
mes_ocu<-db2019[,'MESOCU']


data2019<-data.frame(dep_reg,mun_reg,mes_reg,ano_reg,clase_uni,edad_M,edad_F,et_M,et_F,nac_M,nac_F,esc_M,esc_F,ocup_M,ocup_F,dep_ocu,mun_ocu,dia_ocu,mes_ocu)
colnames(data2019)<-c('Departamento de registro','Municipio de registro','Mes de registro','Año de registro','Clase de union','Edad del hombre','Edad de la mujer','Grupo etnico del hombre','Grupo etnico de la mujer','Nacionalidad del hombre','Nacionalidad de la mujer','Escolaridad del hombre','Escolaridad de la mujer','Ocupacion del hombre','Ocupacion de la mujer','Departamento de ocurrencia','Municipio de ocurrencia','Dia de ocurrencia','Mes de ocurrencia')




#Ordenamiento de la base de datos de matrimonio del ano 2020
path = file.path("matrimonio2020.sav")
db2020 = read_sav(path)


dep_reg<-db2020[,'DEPREG']
mun_reg<-db2020[,'MUPREG']
mes_reg<-db2020[,'MESREG']
ano_reg<-db2020[,'AÑOREG']
clase_uni<-db2020[,'CLAUNI']
edad_M<-db2020[,'EDADHOM']
edad_F<-db2020[,'EDADMUJ']
et_M<-db2020[,'PUEHOM']
et_F<-db2020[,'PUEMUJ']
nac_M<-db2020[,'NACHOM']
nac_F<-db2020[,'NACMUJ']
esc_M<-db2020[,'ESCHOM']
esc_F<-db2020[,'ESCMUJ']
ocup_M<-db2020[,'CIUOHOM']
ocup_F<-db2020[,'CIUOMUJ']
dep_ocu<-db2020[,'DEPOCU']
mun_ocu<-db2020[,'MUPOCU']
dia_ocu<-db2020[,'DIAOCU']
mes_ocu<-db2020[,'MESOCU']


data2020<-data.frame(dep_reg, mun_reg, mes_reg, ano_reg, clase_uni, edad_M, edad_F, et_M, et_F, nac_M, nac_F, esc_M, esc_F, ocup_M, ocup_F, dep_ocu, mun_ocu, dia_ocu, mes_ocu)
colnames(data2020)<-c('Departamento de registro','Municipio de registro','Mes de registro','Año de registro','Clase de union','Edad del hombre','Edad de la mujer','Grupo etnico del hombre','Grupo etnico de la mujer','Nacionalidad del hombre','Nacionalidad de la mujer','Escolaridad del hombre','Escolaridad de la mujer','Ocupacion del hombre','Ocupacion de la mujer','Departamento de ocurrencia','Municipio de ocurrencia','Dia de ocurrencia','Mes de ocurrencia')



data19_20<-full_join(data2019, data2020)
