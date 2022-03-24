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

db <- readRDS("db10_20.rds")
#Descripcion de los datos
#Experimento repetible
set.seed(123)

datos<-db[complete.cases(db),]
summary(datos)
datos[,6:7]<-scale(datos[,6:7])
set.seed(123)
hopkins(datos[,6:7])
str(datos[,6:7])





wss=0
for (i in 1:10) 
  wss[i] <- sum(kmeans(db[,6:7], centers=i)$withinss)

plot(1:10, wss, type="b", xlab="Number of Clusters",  ylab="Within groups sum of squares")

fviz_nbclust(datos[,6:7], kmeans, method = "wss") +
  labs(subtitle = "Elbow method")

fviz_nbclust(datos[,6:7], kmeans, method = "silhouette") +
  labs(subtitle = "Silhouette method")

#Kmeans



km<-kmeans(datos[,6:7],3,iter.max =100)
datos$grupo<-km$cluster


plotcluster(datos[,6:7],km$cluster)


fviz_cluster(km, data = datos[,6:7],geom = "point", ellipse.type = "norm")

da<-head(datos[6:7],n=(nrow(datos)/10))
kj<-head(km$cluster,n=(nrow(datos)/10))
silkm<-silhouette(kj,dist(da))

mean(silkm[,3]) #0.45, no es la mejor particiÃ³n pero no estÃ¡ mal
