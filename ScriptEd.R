library(haven)
library(dplyr)
library(tidyverse)
library(magrittr)

#2010
path = file.path( "matrimonio2010.sav")
db2010 = read_sav(path)

view(db2010)

dep_reg<-db2010[,'Depreg']
mun_reg<-db2010[,'mupreg']
mes_reg<-db2010[,'Mesreg']
ano_reg<-db2010[,'Añoreg']
clase_uni<-db2010[,'Clauni']
edad_M<-db2010[,'Edadhom']
edad_F<-db2010[,'Edadmuj']
et_M<-db2010[,'Gethom']
et_F<-db2010[,'Getmuj']
nac_M<-db2010[,'Nachom']
nac_F<-db2010[,'Nacmuj']
esc_M<-db2010[,'Eschom']
esc_F<-db2010[,'Escmuj']
ocup_M<-db2010[,'Ocuhom']
ocup_F<-db2010[,'Ocumuj']
dep_ocu<-db2010[,'Depocu']
mun_ocu<-db2010[,'mupocu']
dia_ocu<-db2010[,'Diaocu']
mes_ocu<-db2010[,'Mesocu']
ano_ocu<-db2010[,'Añoocu']
area_geo<-db2010[,'Areag']

data2010<-data.frame(dep_reg,mun_reg,mes_reg,ano_reg,clase_uni,edad_M,edad_F,et_M,et_F,nac_M,nac_F,esc_M,esc_F,ocup_M,ocup_F,dep_ocu,mun_ocu,dia_ocu,mes_ocu,ano_ocu,area_geo)
colnames(data2010)<-c('Departamento de registro','Municipio de registro','Mes de registro','Año de registro','Clase de union','Edad del hombre','Edad de la mujer','Grupo etnico del hombre','Grupo etnico de la mujer','Nacionalidad del hombre','Nacionalidad de la mujer','Escolaridad del hombre','Escolaridad de la mujer','Ocupacion del hombre','Ocupacion de la mujer','Departamento de ocurrencia','Municipio de ocurrencia','Dia de ocurrencia','Mes de ocurrencia','Año de ocurrencia','Area geografica de residencia')


#2011
path = file.path( "matrimonio2011.sav")
db2011 = read_sav(path)

dep_reg<-db2011[,'Depreg']
mun_reg<-db2011[,'mupreg']
mes_reg<-db2011[,'Mesreg']
ano_reg<-db2011[,'Añoreg']
clase_uni<-db2011[,'Clauni']
edad_M<-db2011[,'Edadhom']
edad_F<-db2011[,'Edadmuj']
et_M<-db2011[,'Gethom']
et_F<-db2011[,'Getmuj']
nac_M<-db2011[,'Nachom']
nac_F<-db2011[,'Nacmuj']
esc_M<-db2011[,'Eschom']
esc_F<-db2011[,'Escmuj']
ocup_M<-db2011[,'Ocuhom']
ocup_F<-db2011[,'Ocumuj']
dep_ocu<-db2011[,'Depocu']
mun_ocu<-db2011[,'mupocu']
dia_ocu<-db2011[,'Diaocu']
mes_ocu<-db2011[,'Mesocu']
ano_ocu<-db2011[,'Añoocu']
area_geo<-db2011[,'Areag']

data2011<-data.frame(dep_reg,mun_reg,mes_reg,ano_reg,clase_uni,edad_M,edad_F,et_M,et_F,nac_M,nac_F,esc_M,esc_F,ocup_M,ocup_F,dep_ocu,mun_ocu,dia_ocu,mes_ocu,ano_ocu,area_geo)
colnames(data2011)<-c('Departamento de registro','Municipio de registro','Mes de registro','Año de registro','Clase de union','Edad del hombre','Edad de la mujer','Grupo etnico del hombre','Grupo etnico de la mujer','Nacionalidad del hombre','Nacionalidad de la mujer','Escolaridad del hombre','Escolaridad de la mujer','Ocupacion del hombre','Ocupacion de la mujer','Departamento de ocurrencia','Municipio de ocurrencia','Dia de ocurrencia','Mes de ocurrencia','Año de ocurrencia','Area geografica de residencia')



#2012
path = file.path( "matrimonio2012.sav")
db2012 = read_sav(path)

view(db2012)

dep_reg<-db2012[,'DEPREG']
mun_reg<-db2012[,'MUPREG']
mes_reg<-db2012[,'MESREG']
ano_reg<-db2012[,'AÑOREG']
clase_uni<-db2012[,'CLAUNI']
edad_M<-db2012[,'EDADHOM']
edad_F<-db2012[,'EDADMUJ']
et_M<-db2012[,'GETHOM']
et_F<-db2012[,'GETMUJ']
nac_M<-db2012[,'NACHOM']
nac_F<-db2012[,'NACMUJ']
esc_M<-db2012[,'ESCHOM']
esc_F<-db2012[,'ESCMUJ']
ocup_M<-db2012[,'OCUHOM']
ocup_F<-db2012[,'OCUMUJ']
dep_ocu<-db2012[,'DEPOCU']
mun_ocu<-db2012[,'MUPOCU']
dia_ocu<-db2012[,'DIAOCU']
mes_ocu<-db2012[,'MESOCU']
area_geo<-db2012[,'AREAG']


data2012<-data.frame(dep_reg,mun_reg,mes_reg,ano_reg,clase_uni,edad_M,edad_F,et_M,et_F,nac_M,nac_F,esc_M,esc_F,ocup_M,ocup_F,dep_ocu,mun_ocu,dia_ocu,mes_ocu, area_geo)
colnames(data2012)<-c('Departamento de registro','Municipio de registro','Mes de registro','Año de registro','Clase de union','Edad del hombre','Edad de la mujer','Grupo etnico del hombre','Grupo etnico de la mujer','Nacionalidad del hombre','Nacionalidad de la mujer','Escolaridad del hombre','Escolaridad de la mujer','Ocupacion del hombre','Ocupacion de la mujer','Departamento de ocurrencia','Municipio de ocurrencia','Dia de ocurrencia','Mes de ocurrencia','Area geografica de residencia')


