library(Lahman)
library(dplyr)

#1
print(LahmanData)
glimpse(Master)
glimpse(Salaries)
left<- left_join(Master, Salaries, by = "playerID")#dla ka¿dej obserwacji z Master wyszukiwane s¹ obserwacje z Salaries, dla których klucz jest równy kluczowi g³ównemu
right<- right_join(Master, Salaries, by = "playerID")#zamienia tabele glowna z poboczna wzgledem left_join
full<- full_join(Master, Salaries, by = "playerID")
no_salary<- full %>%
  filter(salary == 0) %>%
  select(1:26)
 
#2
glimpse(Appearances)
help("Appearances")
semi<- semi_join(no_salary, Appearances)
ks<- left_join(no_salary, Appearances, by = "playerID")

ks %>%
  summarise(sum_games = sum(G_all),
    maxxd = max(G_all),
    players_without_games = sum(G_all == 0),
    mean = round(mean(G_all),0)
    )

#3
help("HallOfFame")
inducted_players <- HallOfFame %>%
  filter(inducted == "Y")

inducted_salaries <- left_join(inducted_players, h, by = "playerID") %>%
  filter( !is.na(salary)) %>%
  summarise(mean_salary = mean(salary),
            first_quantile = quantile(salary, 0.25),
            third_quantile = quantile(salary, 0.75))

inducted_salaries

