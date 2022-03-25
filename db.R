####Base de Alfredo
library(haven)
library(dplyr)
library(tidyverse)
library(magrittr)
library(plyr)
library(rio)
#install.packages("rio")
#install_formats()
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
ano_ocu<-2013


data2013<-data.frame(dep_reg,mun_reg,mes_reg,ano_reg,clase_uni,edad_M,edad_F,et_M,et_F,nac_M,nac_F,esc_M,esc_F,ocup_M,ocup_F,dep_ocu,mun_ocu,dia_ocu,mes_ocu,ano_ocu)
ocup_M %>% mutate(ocup_M=as.character(ocup_M))
colnames(data2013)<-c('Departamento de registro','Municipio de registro','Mes de registro','Año de registro','Clase de union','Edad del hombre','Edad de la mujer','Grupo etnico del hombre','Grupo etnico de la mujer','Nacionalidad del hombre','Nacionalidad de la mujer','Escolaridad del hombre','Escolaridad de la mujer','Ocupacion del hombre','Ocupacion de la mujer','Departamento de ocurrencia','Municipio de ocurrencia','Dia de ocurrencia','Mes de ocurrencia','Año de ocurrencia')


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
ano_ocu<-2014

data2014<-data.frame(dep_reg, mun_reg, mes_reg, ano_reg, clase_uni, edad_M, edad_F, et_M, et_F, nac_M, nac_F, esc_M, esc_F, ocup_M, ocup_F, dep_ocu, mun_ocu, dia_ocu, mes_ocu,ano_ocu)
colnames(data2014)<-c('Departamento de registro','Municipio de registro','Mes de registro','Año de registro','Clase de union','Edad del hombre','Edad de la mujer','Grupo etnico del hombre','Grupo etnico de la mujer','Nacionalidad del hombre','Nacionalidad de la mujer','Escolaridad del hombre','Escolaridad de la mujer','Ocupacion del hombre','Ocupacion de la mujer','Departamento de ocurrencia','Municipio de ocurrencia','Dia de ocurrencia','Mes de ocurrencia','Año de ocurrencia')



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

ocup_Mf<-as.character(ocup_M)
ocup_Ff<-as.character(ocup_F)


data2015<-data.frame(dep_reg,mun_reg,mes_reg,ano_reg,clase_uni,edad_M,edad_F,et_M,et_F,nac_M,nac_F,esc_M,esc_F,ocup_Mf,ocup_Ff,dep_ocu,mun_ocu,dia_ocu,mes_ocu,ano_ocu)
colnames(data2015)<-c('Departamento de registro','Municipio de registro','Mes de registro','Año de registro','Clase de union','Edad del hombre','Edad de la mujer','Grupo etnico del hombre','Grupo etnico de la mujer','Nacionalidad del hombre','Nacionalidad de la mujer','Escolaridad del hombre','Escolaridad de la mujer','Ocupacion del hombre','Ocupacion de la mujer','Departamento de ocurrencia','Municipio de ocurrencia','Dia de ocurrencia','Mes de ocurrencia','Año de ocurrencia')


d2<-full_join(data2013, data2014)
data13_15<-full_join(d2, data2015)



###Codigo Eduardo

library(haven)
library(dplyr)
library(tidyverse)
library(magrittr)

#2010
path = file.path( "matrimonio2010.sav")
db2010 = read_sav(path)


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

data2010<-data.frame(dep_reg,mun_reg,mes_reg,ano_reg,clase_uni,edad_M,edad_F,et_M,et_F,nac_M,nac_F,esc_M,esc_F,ocup_M,ocup_F,dep_ocu,mun_ocu,dia_ocu,mes_ocu,ano_ocu)
colnames(data2010)<-c('Departamento de registro','Municipio de registro','Mes de registro','Año de registro','Clase de union','Edad del hombre','Edad de la mujer','Grupo etnico del hombre','Grupo etnico de la mujer','Nacionalidad del hombre','Nacionalidad de la mujer','Escolaridad del hombre','Escolaridad de la mujer','Ocupacion del hombre','Ocupacion de la mujer','Departamento de ocurrencia','Municipio de ocurrencia','Dia de ocurrencia','Mes de ocurrencia','Año de ocurrencia')


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


data2011<-data.frame(dep_reg,mun_reg,mes_reg,ano_reg,clase_uni,edad_M,edad_F,et_M,et_F,nac_M,nac_F,esc_M,esc_F,ocup_M,ocup_F,dep_ocu,mun_ocu,dia_ocu,mes_ocu,ano_ocu)
colnames(data2011)<-c('Departamento de registro','Municipio de registro','Mes de registro','Año de registro','Clase de union','Edad del hombre','Edad de la mujer','Grupo etnico del hombre','Grupo etnico de la mujer','Nacionalidad del hombre','Nacionalidad de la mujer','Escolaridad del hombre','Escolaridad de la mujer','Ocupacion del hombre','Ocupacion de la mujer','Departamento de ocurrencia','Municipio de ocurrencia','Dia de ocurrencia','Mes de ocurrencia','Año de ocurrencia')



#2012
path = file.path( "matrimonio2012.sav")
db2012 = read_sav(path)
View(db2012)

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
ano_ocu<-2012


data2012<-data.frame(dep_reg,mun_reg,mes_reg,ano_reg,clase_uni,edad_M,edad_F,et_M,et_F,nac_M,nac_F,esc_M,esc_F,ocup_M,ocup_F,dep_ocu,mun_ocu,dia_ocu,mes_ocu, ano_ocu)
colnames(data2012)<-c('Departamento de registro','Municipio de registro','Mes de registro','Año de registro','Clase de union','Edad del hombre','Edad de la mujer','Grupo etnico del hombre','Grupo etnico de la mujer','Nacionalidad del hombre','Nacionalidad de la mujer','Escolaridad del hombre','Escolaridad de la mujer','Ocupacion del hombre','Ocupacion de la mujer','Departamento de ocurrencia','Municipio de ocurrencia','Dia de ocurrencia','Mes de ocurrencia','Año de ocurrencia')


d<-full_join(data2010, data2011)
dd<-full_join(d, data2012)

###Codigo Estuardo

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
ano_ocu<-db2019[,'AÑOOCU']


data2019<-data.frame(dep_reg,mun_reg,mes_reg,ano_reg,clase_uni,edad_M,edad_F,et_M,et_F,nac_M,nac_F,esc_M,esc_F,ocup_M,ocup_F,dep_ocu,mun_ocu,dia_ocu,mes_ocu,ano_ocu)
colnames(data2019)<-c('Departamento de registro','Municipio de registro','Mes de registro','Año de registro','Clase de union','Edad del hombre','Edad de la mujer','Grupo etnico del hombre','Grupo etnico de la mujer','Nacionalidad del hombre','Nacionalidad de la mujer','Escolaridad del hombre','Escolaridad de la mujer','Ocupacion del hombre','Ocupacion de la mujer','Departamento de ocurrencia','Municipio de ocurrencia','Dia de ocurrencia','Mes de ocurrencia','Año de ocurrencia')




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
ano_ocu<-db2020[,'AÑOOCU']

data2020<-data.frame(dep_reg, mun_reg, mes_reg, ano_reg, clase_uni, edad_M, edad_F, et_M, et_F, nac_M, nac_F, esc_M, esc_F, ocup_M, ocup_F, dep_ocu, mun_ocu, dia_ocu, mes_ocu,ano_ocu)
colnames(data2020)<-c('Departamento de registro','Municipio de registro','Mes de registro','Año de registro','Clase de union','Edad del hombre','Edad de la mujer','Grupo etnico del hombre','Grupo etnico de la mujer','Nacionalidad del hombre','Nacionalidad de la mujer','Escolaridad del hombre','Escolaridad de la mujer','Ocupacion del hombre','Ocupacion de la mujer','Departamento de ocurrencia','Municipio de ocurrencia','Dia de ocurrencia','Mes de ocurrencia','Año de ocurrencia')



data19_20<-full_join(data2019, data2020)


#Codigo Marco

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






#data13_15
#dd
#data19_20
#data16_18

nrow(data13_15)
nrow(dd)
nrow(data19_20)
nrow(data16_18)



data16_18$`Ocupacion del hombre`<-as.character(data16_18$`Ocupacion del hombre`) 
data16_18$`Ocupacion de la mujer`<-as.character(data16_18$`Ocupacion de la mujer`) 


data19_20$`Ocupacion del hombre`<-as.character(data19_20$`Ocupacion del hombre`) 
data19_20$`Ocupacion de la mujer`<-as.character(data19_20$`Ocupacion de la mujer`) 

dataMega<- full_join(data13_15, data16_18)
dataMega2<-full_join(dd,data19_20)
dataMegaFinal<-full_join(dataMega,dataMega2)
nrow(dataMegaFinal)
#save(dataMegaFinal, file = "db10_20.RData")
#view(dataMegaFinal)

saveRDS(dataMegaFinal, "db10_20.rds")

