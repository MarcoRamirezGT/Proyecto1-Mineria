library(haven)
library(dplyr)
library(tidyverse)


path = file.path( "matrimonio2020.sav")
dataset = read_sav(path)



residencia_hombre<-dataset[,'Nachom']
group_by(dataset,residencia_hombre)

data<-data.frame(residencia_hombre)
View(data)


r<-dataset %>%
    group_by(dataset$Nachom) %>%
    tally()

View(r)    
