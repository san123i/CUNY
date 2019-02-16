#This script is used for testing Week3 607 assignments
library(stringr)
example.obj <- "1. A small sentence. - 2. Another tiny sentence."
str_extract(example.obj, "small")
str_extract(example.obj, "ba")
str_extract(example.obj, "^1")

raw.data <-"555-1239Moe Szyslak(636) 555-0113Burns, C. Montgomery555-6542Rev. Timothy Lovejoy555 8904Ned Flanders636-555-3226Simpson, Homer5553642Dr. Julius Hibbert"
str_extract_all(raw.data, "^.*$") #All characters
str_extract_all(raw.data, "\\w+") #All words
str_extract_all(raw.data, "\\w+")

str_extract_all(raw.data, "[[a-zA-Z]., ]{2,}")

unlist(str_extract_all(raw.data, "\\(?(\\d{3})?\\)?(-| )?\\d{3}(-| )?\\d{4}"))

complete_names <- unlist(str_extract_all(raw.data, "[[a-zA-Z]., ]{2,}"))

unlist(str_extract_all(raw.data, "[[a-zA-Z]., ]{2,}"))

unlist(str_extract_all(complete_names, "^Dr.(.*)|^Rev.(.*)"))



unlist(str_extract_all(raw.data, "\\(?\\d{3})?\\)?(-| )?\\d{3}(-| )?\\d{4}"))

unlist(str_extract_all(raw.data, "/^[a-zA-Z]+$/i"))
