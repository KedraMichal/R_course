#1
gender <- c(1,1,0,0,1)
gender2<- factor(gender)
levels(gender2)<-c("man","woman")
gender2

#2
gender <- c(1,1,0,0,1)
gender3<- factor(gender, levels = c(1,0))
levels(gender3)<-c("woman","man")
gender3
                   
#3
as.integer(gender)
as.character(gender)
as.character(as.integer(gender))
