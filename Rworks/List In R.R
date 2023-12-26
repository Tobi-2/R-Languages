##LIST IN R
list1<-list(x=c(10,20,30),
            y=c("A","B","C"),
            z=c(TRUE,FALSE))          
list1            

list2<-list(vec=seq(1:10),
        mat=matrix(1:9.3,3),
        lis=list(a=20,b=30))
list2

##Recursive varibale(variable dat can store value of its own type)
is.recursive(list1)
is.recursive(list2)

##CONVERTING VECTORS TO LIST
price<-c(10,20,30)
pricelist<-as.list(price)
pricelist

##CONVERTING LIST TO VECTOR
price<-c(10,10,20)
newprice<-unlist(price)
newprice

##USING DIM(dimension) FUNCTION TO CONVERT VECTOR TO MATRIX
amount<-c(10,20,30,40)
dim(amount)<-c(2,2,byrow=T)
amount

c1<-("john")
c2<-("bob")
toupper(c2)
paste(c1,c2)
name<-paste(c1,c2)
name
newname<-sub("bob","Cena",name)
newname




###FLOW CONTROL(IF,WHILE LOOP,FOR LOOP)
x<-20+7j
class(x)
typeof(x)
if(is.integer(x)) {print("x is an integer")} else {print("x is not an integer")}


scores<-60
scores  
if(scores>=59){
    print("Good result")
  }else if(scores>50 & scores<63){
    print("Fair result")
  }else if(scores<50 & scores>33){
    print("Bad result")
  }else{
    print("Repeat")
  }


##while loop
v<-c("hello world")
v
count<-2
while (count<7){
print(v) 
count= count+1}


x<-0
while (x<10) {
  cat('x is currently:',x)
  print('x is still less than 10, adding 1 to x')
  
x<- x+1
if(x==10){
  print('x is equals to 10! Terminating loop')
  }
}




##for Loop
age<-c(12,34,54,34,56,76)
age
for(i in age){
  print(i)
}


