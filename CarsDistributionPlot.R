#Load libraries

library(ggplot2)

## View data (dataset built into R)

View(cars)

#Creating a box plot using stopping distance. (Note: There is no x-axis in a box plot.)

d <- ggplot(cars, aes(x = "", y = dist))
d + geom_boxplot() + ggtitle("Box Plot of Stopping Distance")

# Creating a summary of the values in column "distance" from data frame "cars".

summary(cars$dist)

#Show outlier by first calculating IGR (30 in this case)

IQR <- 56 - 26

#Now take IQR * 1.5

30 * 1.5

#This is 45. Now add 45 to 3rd Qu and subtract from 1st Q.
# 56 + 45 = 101
# 26 - 45 = -19

## This shows why we have one high outlier in our boxplot.