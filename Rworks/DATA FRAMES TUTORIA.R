##MERGING DATA FRAMES OF SAME ELEMENT IN THE COLOUMN /ROW
authors<-data.frame(surname=I(c("joy","wesley","ayo","abel","shayo","abu")),
                    nationality=c("us","uk","austria","latvia","rome","haiti"),
                    deceased=c("yes",rep("n0",5)))
authors

books<-data.frame(name=(c("joy","wesley","ayo","abel","dunny","abu")),
                  title=c("ripley","wendy","quail","langley","rush","endy"),
                  other.author=c(NA,"ashley",NA,NA,NA,"dundey"))
books                  
authors
books
(m1<-merge(authors, books, by.x = "surname", by.y = "name"))


authors<-data.frame(surname=I(c("ripley","wendy","james","rush","shayo","abu")),
                    nationality=c("us","uk","austria","latvia","rome","haiti"),
                    deceased=c("yes",rep("n0",5)))
authors
transpose.authors<-t(authors)
View(authors)
books<-data.frame(name=(c("joy","wesley","ayo","abel","dunny","abu")),
                  title=c("ripley","wendy","quail","langley","rush","endy"),
                  other.author=c(NA,"ashley",NA,NA,NA,"dundey"))


books                  
(m2<-merge(authors, books, by.x = "surname" , by.y = "title"))

##MERGING DATA FRAMES USING CBIND/RBIND
SetA<-subset(data1,product=="A")
SetB<-subset(data1,product=="B")
SetA
SetB
cbind(SetA,SetB)
rbind(SetA,SetB)



##MANIPULATE A DATA FRAME

salesreport<- data.frame(Id=(101:110)
              product=c("A","B")
              unit price=as.integer(runif(10,100,200)
              quantity=as.integer(runif(10,10,20))

                        
salesreport


##SUBSETTING DATA FRAME
Id<-c(100:111)
product<-c( rep("A",6), rep("B",6))
unitprice<-c(10:21)
quantity<-c(100:111)

data1<-data.frame(Id,product,unitprice,quantity)
data1

subset.productA<-subset(data1,product=="A")
subset.productA
subset.productB<-subset(data1,product=="B")
subset.productB


##EXTRACTING A PARTICULAR ROW OR COLUMN
subset.data1<-subset(data1,product=="B" & unitprice>10)
subset.data1
####EXTRACTING A PARTICULAR ROW OR COLUMN SPECIFYING THE ROW /COLOMN
subset.data1<-subset(data1,product=="B" & unitprice>10,c(1,4))
subset.data1
data1

##AGGREGATE FUNCTION(Note u might require list function )
aggregate(data1$unitprice,list(data1$product),sum,na.rm=T)

