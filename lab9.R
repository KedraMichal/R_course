library(dplyr)
library(hflights)
#1
help(hflights)
class(hflights)
hflights_tbl<- tbl_df(hflights)
class(hflights_tbl)
hflights_tbl

select(hflights_tbl, DayofMonth:TailNum,
       -DayOfWeek,1, ends_with("In"), contains("can"))

mutate(hflights_tbl, sum = DepTime + ArrTime)

select(hflights_tbl, 1:3, contains("delay"))

#2
arrange(hflights_tbl, desc(ArrTime), DepTime)

filter(hflights_tbl, ArrDelay>1 & DepDelay>1 )

#3 
is.na(hflights_tbl$TaxiIn)
summarise(hflights_tbl, max_taxi = max(TaxiIn, na.rm = TRUE),
          min_taxi = min(TaxiIn, na.rm = TRUE),
          mean_taxi = mean(TaxiIn, na.rm = TRUE),
          median_taxi = median(TaxiIn, na.rm = TRUE),
          na_prop = sum(is.na(hflights_tbl))/length(hflights_tbl$TaxiIn))# proporcje NA w danych


