STUID<- c(1001,1002,1003,1004,1005)
Fname<- c('olode', 'akanbi', 'ajayi', 'funsho', 'tajudeen')
Mname<- c('titilope', 'busola', 'bukola', 'kunle', 'ezekiel')
Lname<- c('amos', 'omolaba', 'omolara', 'joe', 'mayode')
Sex<- c('F', 'F', 'F', 'M', 'M')
Com111<- c(45,55,67,78,56)
Com112<- c(55,67,89,76,45)

da<-data.frame(Com111,Com112)
da
da<-data.frame(STUID,Fname,Mname,Lname,Sex,Com111,Com112)
da
da$total<-(Com111+Com112)
da
da$average<- c(da$total/2)
da
str(da)
da<data.frame(STUID=stuid,Fname=fname,Mname=mname,Lname=lname,Sex=sex,Com111=com111,Com112=com112)
View(da)
gift<- c('book', 'biro', 'pencil', 'eraser', 'kettle')
da<-cbind(da,gift)
da
da$Mname
da

da <-data.frame(STUID,Fname,Mname,Lname,Sex)
da

da1 <-da[1:5]
da1


###HOW TO GET DATA INTO R STUDIO
library(datasets)
library(help="datasets")

##Exporting Csv Files 
data1<-read.csv("First Import.csv")
data1

##exportinf txt files
data2<- read.table("steve.txt", header=T, sep=",")
data2

##exporting excel files
data3<- read_xlsx("thirdimport.xlsx")
data3 
