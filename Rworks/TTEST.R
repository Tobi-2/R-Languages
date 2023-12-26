##RUNNING T-TEST

library(psych)
library(broom)
library(tidyverse)
library(psycho)
library(effectsize)

age<-c(23,45,23,43,56,76)
class<-c(2,2,3,2,3,2)
score<-c(43,46,76,56,78,76)
mydata<-data.frame(age,class,score)
mydata

t.test(mydata$score~mydata$class)
mytest<-t.test(mydata$score~mydata$class)

summary(mytest)
describe(mytest)

##RUNNING ANOVA TEST

age<-c(23,45,23,43,56,76)
class<-c(2,3,6,2,7,4)
score<-c(43,46,76,56,78,76)
mydata<-data.frame(age,class,score)
mydata

aov(mydata$score~mydata$class)
myanova<-aov(mydata$score~mydata$class)

summary(myanova)

