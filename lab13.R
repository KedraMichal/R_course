library(ggplot2)

help(diamonds)

#1
ggplot(diamonds, aes(x = price, y = carat)) + geom_point()

#2
ggplot(diamonds, aes(x = price, y = carat)) + geom_point() + geom_smooth()

#3
ggplot(diamonds, aes(x = price, y = carat, color = factor(clarity))) +
  geom_point() 

#4
ggplot(diamonds, aes(x = price, y = carat, color = factor(clarity))) +
  geom_point()+ geom_smooth(se = FALSE)


