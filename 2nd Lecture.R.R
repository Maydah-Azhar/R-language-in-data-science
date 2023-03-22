# Installing the packages
install.packages("ggplot2")

#To view the data set
View(iris)

##Barplot
library(ggplot2)
df=ggplot(data=iris,aes(x=Species,y=Sepal.Length))+geom_point()
df

### Horizontal bar plot
p + coord_flip()

# To add color
df=ggplot(data=iris,aes(x=Species,y=Sepal.Length,coL=Species))+geom_point()
df
## Scatter plot
data=ggplot(data=iris,aes(x=Petal.Widthy= Petal.Length,col= Species))+geom_point()
data

data=ggplot(data=iris,aes(x=Sepal.Length, y=Sepal.Width,col= Species))+geom_point()
data 

#OR by mapping
df=ggplot(data=iris,mapping=aes(x=Species, y=Sepal.Length,
                                col= Petal.Length))+geom_point()
df

#Change by size
data=ggplot(data=iris,aes(x=Sepal.Length, y=Sepal.Width,
                          size= Species))+geom_point()
data

#Change by shape
data=ggplot(data=iris,aes(x=Sepal.Length, y=Sepal.Width,
                          shape= Species))+geom_point()
data


#Change by shape and color
data=ggplot(data=iris,aes(x=Sepal.Length, y=Sepal.Width,shape= Species,
                          col=Species))+geom_point()
data
 
##Import mpg dataset
data("mpg")
ggplot(data=mpg,mapping=aes(x=cty,y=hwy,
                         col=manufacturer))+geom_bar(stat="identity")

p1=ggplot(data=mpg,mapping=aes(x=displ,y=hwy,
                            col=manufacturer))+geom_point()
p1
##To save pdf file
ggsave("mpg_plot.pdf",plot=p1, width = 10,height = 9,units="in")

