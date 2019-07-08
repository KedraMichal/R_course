#1
df1<-subset(mtcars, mtcars$cyl==4)
df2<-subset(mtcars, mtcars$cyl==6)
df3<-subset(mtcars, mtcars$cyl==8)
my_list<-list(cyl4=df1 , cyl6=df2, cyl8= df3)
my_list

#2
is_true1<-sum(df1$am==0)>sum(df1$am==1)
is_true2<-sum(df2$am==0)>sum(df2$am==1)
is_true3<-sum(df3$am==0)>sum(df3$am==1)

boolean_vec<- c(is_true1,is_true2,is_true3)
names(boolean_vec)<-names(my_list)
boolean_vec
mylist2<-list(cyl4=df1 , cyl6=df2, cyl8= df3,bool=boolean_vec)
mylist2

