# Load PlantGrowth data 
PlantGrowth <- read.table("PlantGrowth.csv", header = T, sep = ",")

# Load required packages
install.packages("lattice")
install.packages("ggplot2")
library(lattice)
library(ggplot2)

# Plot data with built in boxplot funciton
boxplot(weight ~ group, data = PlantGrowth, main = "Plant Growth Data",
        xlab = "Group",
        ylab = "Weight of Plants",
        las = 0,
        col = rainbow(3))

# Plot using lattice package bwplot function
bwplot(weight ~ group, data = PlantGrowth, horizontal = FALSE, main = "Plant Growth Data",
       xlab = "Group",
       ylab = "Weight of Plants",
       las = 0,
       par.settings = list(box.rectangle = list(fill = rainbow(3))))

# Plot using ggplot2 package ggplot function
ggplot(PlantGrowth, aes(x = group, y = weight, fill = group)) + geom_boxplot() + labs(title = "Plant Growth Data",
             x = "Group",
             y = "Weight of Plants") + theme_classic()