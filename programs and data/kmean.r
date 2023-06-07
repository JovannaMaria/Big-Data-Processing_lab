data(iris)
set.seed(123)
k<-3
clusters<-kmeans(iris[, c("Sepal.Length","Petal.Length")], centers=k)
plot(iris[, c("Sepal.Length","Petal.Length")],col=clusters$cluster)
print(clusters$centers)
print(clusters$cluster)
