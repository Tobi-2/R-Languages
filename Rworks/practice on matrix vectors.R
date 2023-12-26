##Matrix
ma<-matrix(1:10)
ma
ma<-matrix(1:10, nrow=5,ncol=5, byrow=TRUE)
ma
Ma<-matrix(Ma,10:20)
Ma
ma2

Ma<-matrix(1:9,nrow=3, ncol=3, byrow=TRUE)
Ma
ltrs<-c('a','b','c','d','e','f','g')
ltrs
mixed_vec=c(Ma, ltrs)
mixed_vec

!!! MATRIX OF LETTERS AND NUMBERS

x<- matrix(1:6, ncol=2)
x
l<- matrix(LETTERS[1:6], nrow=3)
l
mixed_vec=c(x,l)
mixed_vec
cbind(x,l)



### DATA FRAME example

bmi<-data.frame(Gender = c('Female','Male','Female','Male','Male'), Name = c('judith','akpan','rose',
                                                      'abel','daniel'),
                Heigth = c(153.5,123.6,223,174.4,123), Age = c(43,45,67,87,98))
bmi
bmi[3,4]
bmi[3,'Age']
bmi[3,]
bmi
sort(bmi$Age)
ranks<-order(bmi$Age)
ranks
ranks<-order(bmi$Age,decreasing = T)
ranks
sort(bmi$Age)
bmi[ranks,]
bmi[order(bmi$Name,decreasing = TRUE),]
bmi
class(bmi)
typeof(bmi)
bmi<- data.frame (Gender=gender, Name=name,Height=height,Age=age)
str(bmi)

####VECTORS# IN R
vec1<-c(1:7)
vec1

vec2<-c('a','b','c','d','e','f','h')
vec2

vec3<-c(TRUE,1)
vec3

vec4<-c(TRUE,FALSE,TRUE,FALSE,FALSE,TRUE,TRUE)
Vec4

vec5<-seq(1:20)
vec5

odd_value<-seq(1,20,2)
odd_value
even_value<-seq(2,20,2)
even_value


###vector with 10 oddd value starting from20
vec10<-seq(from=21,by=2,length.out=10)
vec10


#####NAMING YOUR VECTOR USING NMAES()
temprature1<-c(1,2,3,4,5,6,7)
temprature1

names(temprature1)<-c('mon','tue','wed','thu','fri','sat','sun')
temprature1

days<- c('mon','tue','wed','thu','fri','sat','sun')
temprature1<-c (34,23,23,45,54,67,59)
names(temprature1)<-days
temprature1

###PRICE SEQUENCING
price<-seq(100,220,20)
names(price)<-paste0("p",1:7)
price



##HAND#LING NA VALUES IN VECTORS
order_details<-c(10,20,30,NA,50,60)
order_details
names(order_details)<-c('mon','tue','wed','thu','fri','sat')
order_details
order_details<-order_details+5
order_details

new_orders<- c(5,10)
update_orders<- order_details+new_orders
update_orders


#####CREATING SUBSET OF VECTOR
first_two<-order_details[1:2]
first_two
l<-length(order_details)
l

v1<-order_details[(l-1):l]
v1
 v2<-order_details[(l-3):2]
v2 
v3<-order_details[(l-2):1]
v3

order_details<30
order_details[order_details<30]

##OMIT NA VALUES FROM THE VECTOR
na.omit(order_details[order_details<30])

na.omit(order_details[(order_details %% 3)==0])

sum(order_details)
sum(order_details,na.rm=T)
min(order_details,na.rm=T)
max(order_details,na.rm=T)
sd(order_details,na.rm=T)
sqrt(order_details)


###USING MATRIX FUNCTION() TO CREATE MATRIX
mat1<-matrix(10:20)
mat1
mat2<-matrix(1:20,nrow=4,byrow=T)
mat2
mat3<-matrix(1:20,ncol=4,byrow=T)
mat3

##CREATING MATRIX FROM VECTOR
stock1<-c(234,123,435,678,543,324)
stock2<-c(837,647,234,908,912,390)
stocks<-c(stock1,stock2)
stocks
stocks.matrix<-matrix(stocks,nrow=3,byrow=T)
stocks.matrix

##NAMING MATRIX USING COLNAMES AND ROWNAMES

days<-c('mon','tue','wed','thu','fri','sat')
st.names<-c('stock1','stock2')

