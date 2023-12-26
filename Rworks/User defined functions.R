###USING DEFAULT FUNCTIONS
app<-seq(1:15)
app
max(app)
min(app)
sqrt(app)
sd(app)


vec1<-c(2,4,6,8,10,12)
sum(vec1)


vec1##USING USER DEFINED FUNCTONS
range1<-function(a){
  result=max(a) - min(a)
  print(result)
 }
 range1(vec1)
sum(vec1/2)
sd(app/2) 

##USER DEFINED FUNCTION EXAMPLE
evenOdd = function(x){
  if(x %% 2 == 0)
    return("even")
  else
    return("odd")
}
print(evenOdd(4))
print(evenOdd(3))


## a function to calculate bmi(body mass index) kg/m^2
  where a is the weight  in kg and b is the height in m^2

  bmi<-function(a,b){
      result<-a/(b^2)
      print(result)
  }
bmi(85,1.7)
bmi(78,1.9)


##Coefficeint of variation CV

dta<-(1:10)
dta

cv<-function(a){
    result=sd(dta)/mean(dta)*100
    print(result)
}
cv(dta)
sd(dta)
sqrt(dta)



age<-c(23,45,23,43,56,76)
class<-c(2,4,6,7,3,2)
score<-c(43,46,76,56,78,76)
mydata<-data.frame(age,class,score)
mydata
View(mydata)
mydata2<-edit(mydata)
mydata2<edit(mydata$class)

             
##Running descriptive statistics
summary(mydata$score)
mean(mydat$score)
sd(mydata$score)
range(mydata$score)

##running the If and else statements
if(9>12){
  print("HELLO WORLD")
}else{
  print("THE SYNTAX IS WRONG")
}


if(100>90){
    print("generator")
}else{
  print("kettle")
}

##RUNNING IF ELSE STATEMENTS
mydata$scoreRan<-c(ifelse(mydata$score>=80,1,ifelse(mydata$score>=70,2,3)))
mydata


scores<-c(10,20,30,40,50,60)
scores
scoresRan<-c(ifelse(scores>=60,1,ifelse(scores>=40,1,2)))
scoresRan


##simple function to calsulate area and perimeter of a rectangle

rectangle=function(lenght,width){
  area= lenght*width
  perimeter=2*(lenght+width)
  result=list("Area"=area, "perimeter"= perimeter)
  return(result)
}  
  
    resultlist=rectangle(2, 3)
  print(resultlist["Area"])
  print(resultlist["perimeter"])

##INLINE FUNCTION  
  f=function(x) x^2*4+x/3
    print(f(4))
    print(f(-2))
    print(0)    
    
    
    
    
##volume of a cylinder
cylinder=function(diameter,lenght,radius){
  volume = pi*diameter^2*length/4
  return(volume)
}
  print(cylinder(5, 10))
  