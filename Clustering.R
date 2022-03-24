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
#Experimento repetible
set.seed(123)

datos<-db[complete.cases(db),]

datos<-data.frame(datos)
summary(datos)
#Muestra de 1000


datos<- datos[sample(nrow(datos), 1000), ]


#Normalizado
datos[,6:7]<-scale(datos[,6:7])
#Experimento repetible
set.seed(123)

hopkins(datos[,6:7])


#Matriz de distancia
datos_dist<- dist(datos[,6:7])
#fviz_dist(datos_dist, show_labels = F)

#Metodo de codo


wss=0
for (i in 1:10) 
  wss[i] <- sum(kmeans(db[,6:7], centers=i)$withinss)

plot(1:10, wss, type="b", xlab="Number of Clusters",  ylab="Within groups sum of squares")

#Elbow
fviz_nbclust(datos[,6:7], kmeans, method = "wss") +  labs(subtitle = "Elbow method")
#Silhoutte
fviz_nbclust(datos[,6:7], kmeans, method = "silhouette") +  labs(subtitle = "silhouette method")

#Paquete NbClust
nb <- NbClust(datos[,6:7], distance = "euclidean", min.nc = 2,max.nc = 10, method = "complete", index ="all")
#Kmeans

km<-kmeans(datos[,6:7],3)
datos$grupo<-km$cluster


plotcluster(datos[,6:7],km$cluster)

fviz_cluster(km, data = datos[,6:7],geom = "point", ellipse.type = "norm")


#Metodo de silueta
silkm<-silhouette(km$cluster,dist(datos[,6:7]))
mean(silkm[,3])

k2<- kmeans(datos[,6:7],centers=3,nstart = 25)

fviz_cluster(k2,data=datos[,6:7],labelsize = 6)


fviz_cluster(km,
             datos[,6:7],
             labelsize = 6,
             choose.vars = c("Sepal.Width","Sepal.Length"),
             main="k=3 grupos")


