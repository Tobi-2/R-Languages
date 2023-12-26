library(psych)
library(psycho)
library(datasets)
steve<-read.table("steve.txt", header = T, sep = ",")
summary(steve)
str(steve)
mymodel<-lm(WT..KG.~ HT..m.+ AGE..YRS., data=steve)
summary(mymodel)

HT<-1.6
AGE<-35
WT..KG.= -46.9329+70.8774*HT+0.1669*AGE
WT..KG.
