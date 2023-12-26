x<-rnorm(10)
x
y<-rnorm(10)
y
x11()
dev.cur()

mat1<-matrix(1:6,2)
mat1
layout(mat1)

hist(x,y)
barplot(y,x)
boxplot(x,y)
plot(y,x)
plot(x,y)
plot(x,y)


da<-data.frame(x,y)
da

da1<-data.frame(x,y,x1,y1)
da1


da$x1<-(x* 1.7873006)
da
da$y1<-(y* -0.08623448)
da
plot(da)
par(bg="yellow")
dev.cur()
dev.set(2)
plot(x~y)
plot(x~y, title("PARAMETERS PLOT"))



print(x)
print(y)
