library(ggplot2)
library(dplyr)
library(tidyr)
library(hflights)

#1
glimpse(hflights)

tidy_hflights<- hflights %>%
  select(11:13, UniqueCarrier, Distance) %>%
  gather(typeofDelay, Value, -UniqueCarrier, -Distance, -AirTime)
  
tidy_hflights %>%
  ggplot(aes(x = AirTime, y = Value, size = Distance,
              color = UniqueCarrier, shape = typeofDelay)) +geom_point()

#2
tidy_hflights2<- hflights %>%
  select(TaxiIn, TaxiOut, 1:3, UniqueCarrier, Distance) %>%
  gather(TaxiType, Time, TaxiIn, TaxiOut) %>%
  unite(Data, Year:DayofMonth,sep ="-") %>%
  mutate(Data = as.Date(Data))

tidy_hflights2 %>%
  ggplot(aes(x = Data, y = Time))+
  geom_point(aes(shape = TaxiType, size = Distance))+ 
  geom_smooth(aes(color = UniqueCarrier), se = FALSE)





