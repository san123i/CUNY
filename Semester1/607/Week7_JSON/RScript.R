#install.packages("rjson")
library(rjson)

jsonResult <- fromJSON(txt="C://CUNY//GIT//CUNY//Semester1//607//Week7_JSON//Books.json") %>% as.data.frame()
jsonResult
as.data.frame(jsonResult)

#install.packages("rjson")
json_df <- fromJSON("C://CUNY//GIT//CUNY//Semester1//607//Week7_JSON//Books.json")
View(json_df)

#install.packages("xml2")
library(xml2)
xml_data <- read_xml(x = "https://raw.githubusercontent.com/san123i/CUNY/master/Semester1/607/Week7_JSON/Books.xml") 

authors_data <- xml_find_all(xml_data, "//book//authors")

library("XML")
library("methods")

xml_df <- xmlToDataFrame("C://CUNY//GIT//CUNY//Semester1//607//Week7_JSON//Books.xml")

#HTML
install.packages("rvest")
library(rvest)
html_df <- as.data.frame(read_html(x = "https://raw.githubusercontent.com/san123i/CUNY/master/Semester1/607/Week7_JSON/Books.html") %>% html_table(fill=TRUE))
View(html_df)


