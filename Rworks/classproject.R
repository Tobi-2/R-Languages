## Running my test
library(readxl)
relation<-read_xlsx("belongingdata.xlsx")
by_age<-relation %>% group_by(Age)
by_age
view(by_age)
predict(relation)
ns<-cor.test(relation$TotalBelonging,relation$AverageBelonging)
ns
plot(relation$TotalBelonging~relation$AverageBelonging, xlab="a", ylab = "c")

## categorizing Age
age_group<-function(a,b,c){
if(Age<=30){
  print("adolescent")
}else if(Age<=60){
  print("adult")
}else if(Age>60){
  print("aged")
}else{
  print("Old")
}
}
age_group(18)
View(relation)
we<-sum(relation$Belonging1:relation$Belonging2, na.rm = TRUE)
we
