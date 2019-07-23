library(dplyr)
library(hflights)

#1
sum_unique<- 0
for (i in unique(hflights$Dest)){
  sum_unique = sum_unique+1
}

hflights %>%
  filter(hflights$Distance/ (hflights$AirTime/60) > 300) %>%
  summarise(max_flight = max(AirTime, na.rm = TRUE),
            min_flight = min(AirTime, na.rm = TRUE),
            unique_dest = sum_unique,
            flights_number = nrow(hflights)
            )

#2
#Ranking linii lotniczych pod wzgledem ilosci lotow > 1000 mil
hflights %>%
  filter(Distance > 1000) %>%
  group_by(UniqueCarrier) %>%
  summarise(n_flights = n()) %>%
  arrange( desc(n_flights))
#n()-liczba obs.- dziala tylko dla summarise, mutate, filter
 

#3
#Ilosc najczesciej odwiedzanej destynacji dla kazdej z linii lotniczych
hflights %>%
  group_by(UniqueCarrier, Dest) %>%
  summarise(n_fl = n()) %>%
  summarise(max_d = max(unique(n_fl))) %>%
  arrange( desc(max_d))
   



 



