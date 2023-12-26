#### DATA EXTRACTEXCERCIXE
data1<-read.csv("RAW DATA1.csv")
data1

View(data1)
mydata2<-edit(data1)

data1$bmi<-c(data1$WT..KG./data1$HT..m.^2)
data1

sda<-c(data1$WT..KG./data1$HT..m.^2)
data1<-cbind(data1,sda)
data1


View(data1)
bmi1<-function(a,b){
  result<-a/(b^2)
  print(result)
}
data1$newbmi<-c(bmi1(data1$WT..KG.,data1$HT..m.))
data1

data()
data(AirPassengers)
head(AirPassengers)
head(iris)
View(state.x77)
tail(state.x77)
