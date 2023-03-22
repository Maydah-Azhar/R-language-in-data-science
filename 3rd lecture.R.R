library(ggplot2)

data(mpg)
df<- mpg
##How to store data frame in excel format-----
install.packages("writexl",dependencies = TRUE)
library(writexl)
write_xlsx(df,'mpg.xlsx')

##how to import excel file------
library(readxl)
mpg1 <- read_excel("mpg.xlsx")
View(mpg1)

##Removing a dataset
remove(mpg1)

#plotting in ggplot2-----
#in groups
ggplot(data = df, mapping = aes(x=cty, y=hwy, col=class))+
  geom_point()+ facet_wrap(~class, nrow  = 2)

#To change the theme------
  ggplot(data = df, mapping = aes(x=cty, y=hwy, col=class))+
  geom_point()+ facet_wrap(~class, nrow  = 2)+theme_dark()+
    labs(title = "Data of cars",
         x = "City", y = "Engine", col="Type")
  
  install.packages("nycflights13", dependencies = TRUE)
  library(nycflights13)
  library(tidyverse)
  
  dta <-nycflights13::flights
  dta
  summary(dta)

  ##No of rows
  nrow(jan)
  
  ##Applying filter-------
  jan<-filter(dta, month==1)
  feb<-filter(dta, month==2)
  march<-filter(dta, month==3)
  apral<-filter(dta, month==4)
  may<-filter(dta,month==5)

  # 2 values in 1 coloumn-------
  jan_feb<- filter(df2, month %in% c(1,2))
  jan_feb<- filter(df2, month==1 | month==2)
  # to save different data frame in excel------
  write_xlsx(jan, "jan.xlsx")
  write_xlsx(feb, "feb.xlsx")
  ##Operators------
  filter(dta, arr_delay > 120)
  filter(df2, arr_delay > 180)
  filter(df2, dep_delay  > 120 & dep_delay < 300)
  filter(df2, dep_delay  > 120 | dep_delay < 300)
  
  ##Filter data in UA-----
  jan1<- filter(dta, month==1, day==1, carrier=="UA")
  jan1  
  