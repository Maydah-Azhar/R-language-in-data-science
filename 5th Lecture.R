library(ggplot2)

df <- nycflights13::flights
colnames(df)

ggplot(df,mapping = aes(x=distance,y=arr_delay))+geom_point()

##Normal distribution
hist(df$distance)
qqnorm(df$distance)

##for correlation
install.packages('corrplot', dependencies = TRUE)
library(corrplot)
dtaa<- mtcars
m=cor(dtaa)

corrplot(m, method = 'shade')
corrplot.mixed(m,lower= 'number', upper= 'pie')

