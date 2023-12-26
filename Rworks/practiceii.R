numb <- c(1,2,3,4,5,6,7,8,9)
alph <- c('a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i')
mixed_vec = c(numb,alph)
mixed_vec
class(mixed_vec)
typeof(mixed_vec)

num= c(1:10)
num
class(num)
typeof(num)
mixed_vec = c(numb,alph,num)
mixed_vec
class(mixed_vec)

ltrs = c(1:10)
ltrs
as.numeric(ltrs)
as.logical(ltrs)
as.character(ltrs)

attributes(ltrs)
