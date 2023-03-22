# How to Activate Respositories
setRepositories()

# How to install packages
install.packages("readxl")
install.packages("tidyverse", dependencies = TRUE)

# How to activate packages
library(readxl)
library(tidyverse)

# To find all built in data sets in R
data("iris")

ggplot(iris,aes(Species,Sepal.Width,col=Species))+geom_point()

ggplot(iris,aes(Sepal.Width,Sepal.Length))+geom_point()

