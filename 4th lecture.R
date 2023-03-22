library(ggplot2)

data(mpg)
df<- mpg

##Change color in background
ggplot(data = df, mapping = aes(x=cty, y=hwy, col=class))+
  geom_point()+facet_wrap(~class, nrow  = 2)+
  theme_bw()+ labs(title = "Data of cars",
       x = "City", y = "Engine", col="Type")+
  theme(strip.background = element_rect(fill = 'pink'))+
  ##to change color of text
  theme(strip.text = element_text(colour = 'red'))+
  ##to remove grid lines
  theme(panel.grid = element_blank())


library(nycflights13)
library(tidyverse)

dta <-nycflights13::flights
dta
glimpse(dta)

data("iris")
iris %>% group_by(Species) %>%
  summarise(avg = mean(Sepal.Length))

###To calculate averages
##for mpg data
df %>% 
  group_by(class) %>%
  summarise(avg = mean(cyl)) %>% 
  #to arrange the averages
  arrange(avg)

##for flights data
dta %>% 
  group_by(carrier) %>%
  summarise(avg = mean(sched_arr_time)) %>% 
  #to arrange the averages
  arrange(avg)

###To calculate sum
##for mpg data
df %>% 
  group_by(class) %>%
  summarise(add = sum(cyl)) %>% 
  #to arrange the sum
  arrange(add)

##for flights data
dta %>% 
  group_by(carrier) %>%
  summarise(add = sum(sched_arr_time)) %>% 
  #to arrange the averages
  arrange(add)

##To select the data
dta1 <- dta %>% select(year, month, day)
dta1
dta2 <- dta %>% select(year, month, day) %>% filter(month==1)
dta2

##To rename the coloumn
dta3 <- rename(dta ,departure_time=dep_time)
