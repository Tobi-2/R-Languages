library(tidyverse)
library(ggplot2)
library(ggcorrplot)
library(dplyr)
library(readr)
StudentsPerformance <- read.csv("StudentsPerformance.csv")
view(StudentsPerformance)

StudentsPerformance$gender1 <- as.numeric(factor(StudentsPerformance$gender))
StudentsPerformance$race.ethnicity1<- as.numeric(factor(StudentsPerformance$race.ethnicity))
StudentsPerformance$parent.education <-as.numeric(factor(StudentsPerformance$parental.level.of.education,levels=
                                                             c('some high school','high school',"associate's degree",'some college',"bachelor's degree", "master's degree"), ))
StudentsPerformance$lunch1 <- as.numeric(factor(StudentsPerformance$lunch, levels=c("standard",'free/reduced')))
StudentsPerformance$praparationcourse <- as.numeric(factor(StudentsPerformance$test.preparation.course, levels =c('none','completed') ))
StudentsPerformanceNew <-StudentsPerformance
View(StudentsPerformanceNew)
df <-select_if(StudentsPerformanceNew, is.numeric)
r<- cor(df,use="complete.obs")
boxplot(r)
round(r,2)

ggcorrplot(r,
           hc.order=TRUE,
           type='lower',
           lab= TRUE)
           