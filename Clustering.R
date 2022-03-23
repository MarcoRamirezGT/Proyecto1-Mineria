library(cluster) #Para calcular la silueta
library(e1071)#para cmeans
library(mclust) #mixtures of gaussians
library(fpc) #para hacer el plotcluster
library(NbClust) #Para determinar el número de clusters óptimo
library(factoextra) #Para hacer gráficos bonitos de clustering
library(hopkins) #Para revisar si vale la pena hacer agrupamiento
library(GGally) #Para hacer el conjunto de graficos
library(FeatureImpCluster) #Para revisar la importancia de las variables en los grupos.
library(pheatmap) #Para hacer mapa de calor
library(tidyverse)


db <- readRDS("db10_20.rds")
#Descripcion de los datos
set.seed(123)
db<-data.frame(db)
db<-db[complete.cases(db),]

EdadHombre<-db[,6]
EdadMujer<-db[,7]

EdadHombre<-as.numeric(EdadHombre)
EdadMujer<-as.numeric(EdadMujer)

df<-data.frame(EdadHombre,EdadMujer)
df[,1:2]<-scale(df[,1:2])
hopkins(df[,1:2])
