#1

my_vec1<- c(1,22,NA,12)
my_vec2<- c(12,21,15,9)
result<-mean(abs(my_vec1-my_vec2), na.rm = TRUE)
print(result)

#2

double<- function(x, message = TRUE){
  x2<- x*x
  if(message == TRUE){
  print(paste("Kwadrat liczby to",x2))
  }
  return(x2)
}

d1<- double(12)
d2<- double(20, message = F)
d1;d2

