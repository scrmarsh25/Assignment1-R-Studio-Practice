# R Basics script 
# Sean Marsh - scm68@students.uwf.edu

# To install packages in R
install.packages("datasets")
install.packages("tidyverse")

# To load packages in R - assuming they are installed
library(datasets)
library(tidyverse)
library(scales)

#Data sets in R (I uploaded mine to my github link)

url <- "https://raw.githubusercontent.com/scrmarsh25/Assignment1-R-Studio-Practice/refs/heads/main/Tuna.csv"
tuna <- read.csv(url)

#Statistics on the price of Starkist Water tuna

sum(tuna$price.skw)
mean(tuna$price.skw)
sd(tuna$price.skw)
summary(tuna$price.skw)
var(tuna$price.skw)

#Histogram

hist(tuna$price.skw,
     main= "Distribution of Starkist Water Prices",
     xlab = "Price (Starkist Water) in cents",
     col = "lightblue")

#Histogram with dollar amounts

hist(tuna$price.skw,
     main = "Distribution of Starkist Water Prices",
     xlab = "Price (Starkist Water)",
     col = "lightgreen",
     xaxt = "n")
axis(1, at = pretty(tuna$price.skw), labels = dollar(pretty(tuna$price.skw)))
