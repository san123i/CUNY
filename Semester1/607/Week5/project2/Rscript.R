library(tidyr)
library(dplyr)

snp_data <- read.csv("C://CUNY//GIT//CUNY//Semester1//607//Week5//project2//SnP500-financials.csv", header = T, sep = ",", stringsAsFactors = F, strip.white = T)

snp_longdata <- gather(data = snp_data, key = "Attribute", value="values",3:12)

snp_sector_data <- snp_longdata %>% filter(Attribute == 'Sector')

snp_sales_earnings_data <- snp_longdata %>% filter(!Attribute  %in% stock_attributes)

snp_stock_data <- snp_longdata %>% filter(!Attribute  %in% stock_attributes)
  
library(ggplot2)
#Number of companies by sector in snp 500
ggplot(snp_sector_data, aes(x=values)) + geom_bar()

snp_data <- mutate(snp_data, "fluct_perc" = abs(100*((X52.Week.High - X52.Week.Low)/X52.Week.Low)) )

#Sectors which experienced most fluctuations
ggplot(arrange(snp_data, desc(fluct_perc)) %>% top_n(100), aes(x=Sector, y=fluct_perc)) + geom_col()

#Highest PE sectors
pe_data <- select(snp_data, Sector, Price.Earnings) %>% group_by(Sector) %>% summarise(meanPE = mean(Price.Earnings, na.rm = T))
ggplot(pe_data, aes(x=Sector, y=meanPE))) + geom_col()

#Highest dividend yield sectors 
yield_data <- select(snp_data, Sector, Dividend.Yield) %>% group_by(Sector) %>% summarise(meanDividendYield = mean(Dividend.Yield, na.rm = T))

ggplot(yield_data, aes(x=Sector, y=meanDividendYield)) + geom_col()

#Print the premium stocks in each sector
premium_stocks <- select(snp_data, Sector, Name, Price.Earnings) %>% group_by(Sector) %>% filter(Price.Earnings==max(Price.Earnings, na.rm = T))
ggplot(premium_stocks, aes(x=Name, y=Price.Earnings, fill=Sector)) + geom_col()