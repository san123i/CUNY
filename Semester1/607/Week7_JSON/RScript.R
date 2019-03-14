#install.packages("rjson")
library(rjson)

jsonResult <- fromJSON(file="C://CUNY//GIT//CUNY//Semester1//607//Week7_JSON//Books.json")
jsonResult

as.data.frame(jsonResult)

#install.packages("xml2")
library(xml2)
