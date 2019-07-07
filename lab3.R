
#1
first_column<-rownames(mtcars)
dataf<-data.frame(first_column,mtcars,row.names = NULL,stringsAsFactors = FALSE)

#2
positions<-order(dataf$mpg)
dataf2<-dataf[positions,]
subset(dataf2, dataf$cyl == 4)#mpg ascending

#3
dataf3<-subset(dataf2, am== 0)
mean(dataf3$ hp)
