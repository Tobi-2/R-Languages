library (datasets)

Data1<-read.csv("First Import.csv")
Data1

x11()
dev.cur()
dev.set(4)

mat<-matrix(1:4,2)
mat
layout(mat)

plot(Data1$Rank)
plot(Data1$Year)
plot(Data1$NA_Sales)
plot(Data1$EU_Sales)

plot(Data1$Rank~Data1$Year)
plot(Data1$Rank~Data1$Year, title("VG SALES FOR THE YEARS"))

plot(Data1$Rank~Data1$Year, title="VG SALES FOR THE YEARS", xlab="YEARS", ylab="AMOUNT SOLD")
     
     