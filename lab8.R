#1
today<- Sys.Date()
independence_day<- as.Date("1918-11-11")
independence_day
diff_time<- today-independence_day
print(diff_time)

#2
my_bir<- as.Date("2098-07-11")
format(my_bir,"%Y")#rok
format(my_bir,"%y")
format(my_bir,"%m")#miesiac
format(my_bir,"%d")#dzien miesiaca
format(my_bir,"%A")#dzien tygodnia

#3
first<- as.POSIXct("2018-10-10 08:00:00")
now<- Sys.time()
diff<- difftime(now, first,  units = "secs")
diff
                