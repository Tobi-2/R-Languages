## Running a linear model
steve<-read.table("steve.txt", header=T, sep = ",")
mymodel<-lm(steve$HT..m.~steve$WT..KG.)
summary(mymodel)
x11()
layout(matrix(1:4,2))
plot(mymodel)


## Multiple Regression
mymodel2<-lm(steve$HT..m.~steve$WT..KG.+steve$AGE..YRS.+steve$GA.WKS.)
summary(mymodel2)
fitted(mymodel2)
residuals(mymodel2)
lib

mymodel3<-lm(steve$HT..m.~steve$WT..KG.*steve$AGE..YRS.*steve$GA.WKS., data = steve)
summary(mymodel3)
cor(steve$HT..m.,steve$WT..KG.)
mtcars

lm(steve$HT..m.~steve$WT..KG.*steve$AGE..YRS.,steve$WT..KG.:steve$AGE..YRS.)
mymodel4<-lm(steve$HT..m.~steve$WT..KG.*steve$GA.WKS.,steve$WT..KG.:steve$GA.WKS., data = steve)
mymodel4
summary(mymodel4)
