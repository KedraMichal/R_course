library(moments)
#1
my_list<- list(cars = mtcars, iri = iris, ins = InsectSprays)

dims_lap<- lapply(my_list, dim)#wyniki w postaci listy
dims_sap<- sapply(my_list, dim)#wynik w postaci macierzy
print(dims_sap)

#2
for(i in mtcars){

  print(paste(mean(i),median(i),skewness(i)))
}

sol_by_apply<- apply(mtcars, 2, function(df){
    c(avg = mean(df),
      med = median(df),
      skew = skewness(df))
  })

sol_by_apply

#3
#dzielimy funkcja split na ramki danych z tymi samymi wartosciami zmiennych kategorycznych
div_data<-split(mtcars, mtcars$am)

sapply(div_data, function(df){
  mean(df$hp/df$disp)
  }
)

#4
first_split<- split(mtcars,mtcars$am)
str(first_split)
final_list<- lapply(first_split,function(df){
  split( df, df$cyl)
    }
)

str(final_list)


