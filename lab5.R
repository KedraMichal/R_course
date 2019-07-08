#1
if (my_result < 10 & my_result %% 2 == 0) {
    print("Small even result.")
} else if (my_result < 10 & my_result %% 2 != 0) {
    print("Small odd result.")
} else if (my_result >= 10 & my_result %% 2 == 0) {
    print("Large even result.")
} else {
    print("Large odd result.")
}

#2
vec<-c(1,-5,4,3,10,-8)
if (min(vec) <0){
  vec[vec<0]<-0
} else {
  my_sum=sum(vec)
}
vec

#3
vec2<-c(1,-5,4,3,10,-8)
if (min(vec2) <0){
  vec2[vec2<0]<-0
  my_sum2=sum(vec2)
}
my_sum2

#4
i<-2
while(i<10) {
  print(i%%5)
  i<-i+2
  if(i%%4 == 0){
    break
  }
}

#5
for(i in unique(mtcars$cyl)){
  avg<-round(mean(mtcars$mpg[i == mtcars$cyl]),2)
  print(paste("Mean is:",avg,"for",i,"cylinders"))
  
}




