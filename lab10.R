library(tidyr)

#1
df<- read.csv("https://raw.githubusercontent.com/amachno/R_course_UJ_ed1/master/bmi_clean.csv")
head(df)

help(gather)
long_df<- gather(df, year, bmi, -Country)# Country nie zmieniamy

#2
help(spread)
wide_df<- spread(long_df, year, bmi)# year, kolumna ktora dzielimy

#3
df_students<- read.csv("https://raw.githubusercontent.com/amachno/R_course_UJ_ed1/master/students_with_dates.csv")
help(separate)

df_grades<- separate(df_students, Grades, c("Grade_1","Grade_2","Grade_3"))# rozdzielamy

df_unite<- unite(df_grades, All_Grades,
                 c("Grade_1","Grade_2","Grade_3"), sep = ', ')# sklejamy 

