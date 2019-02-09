

setwd("C://CUNY//GIT//CUNY//Semester1//606//Week1//Lab//Lab1")
source("more/cdc.R")

summary(cdc$height)
summary(cdc$age)

table(cdc$gender)/20000

table(cdc$exerany)/2000

length(which(cdc$gender=="m"))

length(which(cdc$genhlth == "excellent"))/20000

?sum


nrow(subset(cdc, gender=="m"))

subset(cdc, age<23 & smoke100>0)
