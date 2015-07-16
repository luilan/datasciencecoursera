# Question 1
# The American Community Survey distributes downloadable data about United States communities. Download the 2006 microdata survey about housing for the state of Idaho using download.file() from here: 
#     
#     https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06hid.csv 
# 
# and load the data into R. The code book, describing the variable names is here: 
#     
#     https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FPUMSDataDict06.pdf 
# 
# How many properties are worth $1,000,000 or more?
# 
# Answer  = 53




# Question 2
# Use the data you loaded from Question 1. Consider the variable FES in the code book. Which of the "tidy data" principles does this variable violate?
# 
# Answer: Tidy data has one variable per column.


# Question 3
# Download the Excel spreadsheet on Natural Gas Aquisition Program here: 
#     
#     https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FDATA.gov_NGAP.xlsx 
# 
# Read rows 18-23 and columns 7-15 into R and assign the result to a variable called:
#     dat 
# What is the value of:
#     sum(dat$Zip*dat$Ext,na.rm=T) 
# (original data source: http://catalog.data.gov/dataset/natural-gas-acquisition-program)
#  
# Answer 36534720



# Question 4
# Read the XML data on Baltimore restaurants from here: 
#     
#     https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Frestaurants.xml 
# 
# How many restaurants have zipcode 21231?
# 
# Answer 127


# 
# Question 5
# The American Community Survey distributes downloadable data about United States communities. Download the 2006 microdata survey about housing for the state of Idaho using download.file() from here: 
#     
#     https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06pid.csv 
# 
# using the fread() command load the data into an R object
# DT 
# Which of the following is the fastest way to calculate the average value of the variable
# pwgtp15 
# broken down by sex using the data.table package?
# print("1")
# system.time(for (i in 1:10000) { mean(DT$pwgtp15,by=DT$SEX)})
# print("2")
# system.time(for (i in 1:10000) { sapply(split(DT$pwgtp15,DT$SEX),mean) })
# print("3")
# system.time(for (i in 1:10000) { rowMeans(DT)[DT$SEX==1]; rowMeans(DT)[DT$SEX==2]})
# print("4")
# system.time(for (i in 1:10000) { DT[,mean(pwgtp15),by=SEX]})
# print("5")
# system.time(for (i in 1:10000) { tapply(DT$pwgtp15,DT$SEX,mean)})
# print("6")
# system.time(for (i in 1:10000) { mean(DT[DT$SEX==1,]$pwgtp15); mean(DT[DT$SEX==2,]$pwgtp15)})
# 
#  Answer  : DT[,mean(pwgtp15),by=SEX]



## ----------------------------------------------------------------------------------------------------------
## QUIZ 2 QUIZ 2 QUIZ 2 QUIZ 2 QUIZ 2 QUIZ 2 QUIZ 2 QUIZ 2 QUIZ 2 QUIZ 2 QUIZ 2 QUIZ 2 QUIZ 2 QUIZ 2 QUIZ 2
## ----------------------------------------------------------------------------------------------------------


# QUIZ 2 Question 1
# Register an application with the Github API here https://github.com/settings/applications. Access the API to get information on your instructors repositories (hint: this is the url you want "https://api.github.com/users/jtleek/repos"). Use this data to find the time that the datasharing repo was created. What time was it created? This tutorial may be useful (https://github.com/hadley/httr/blob/master/demo/oauth2-github.r). You may also need to run the code in the base R package and not R studio.
# 2013-11-07T13:25:07Z



# QUIZ 2 Question 2
# The sqldf package allows for execution of SQL commands on R data frames. We will use the sqldf package to practice the queries we might send with the dbSendQuery command in RMySQL. Download the American Community Survey data and load it into an R object called
# acs
# 
# 
# https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06pid.csv 
# 
# Which of the following commands will select only the data for the probability weights pwgtp1 with ages less than 50?
#  
# sqldf("select pwgtp1 from acs where AGEP < 50")


# Quiz 2 Question 3
# Using the same data frame you created in the previous problem, what is the equivalent function to unique(acs$AGEP)
# sqldf("select distinct AGEP from acs")
 

# Question 4
# How many characters are in the 10th, 20th, 30th and 100th lines of HTML from this page: 
#     
#     http://biostat.jhsph.edu/~jleek/contact.html 
# 
# (Hint: the nchar() function in R may be helpful)
# 
# 
# Answer
# lines = readLines("http://biostat.jhsph.edu/~jleek/contact.html ")
# length(lines)
# nchar(lines[c(10,20,30,100)])
# 45 31 7 25
#  


# QUIZ 2 Question 5
# Read this data set into R and report the sum of the numbers in the fourth of the nine columns. 
# 
# https://d396qusza40orc.cloudfront.net/getdata%2Fwksst8110.for 
# 
# Original source of the data: http://www.cpc.ncep.noaa.gov/data/indices/wksst8110.for 
# 
# (Hint this is a fixed width file format)
#  
# 

# To read the fixed length file use:
#     x <- read.fwf(
#     file=url("http://www.cpc.ncep.noaa.gov/data/indices/wksst8110.for"),
#     skip=4,
#     widths=c(12, 7,4, 9,4, 9,4, 9,4))
# Or
# df <- read.fwf(
#     file=url("http://www.cpc.ncep.noaa.gov/data/indices/wksst8110.for"),
#     widths=c(-1,9,-5,4,4,-5,4,4,-5,4,4,-5,4,4),
#     skip=4
# )
# 
# Or
# 
# x <- readLines(con=url("http://www.cpc.ncep.noaa.gov/data/indices/wksst8110.for"))
# 
# # Skip 4 lines
# x <- x[-(1:4)]
# 
# mydata <- data.frame(var1 = substr(x,1,10),
#                      var2 = substr(x, 16,19),
#                      var3 = substr(x, 20, 23),
#                      var4 = substr(x, 29, 32)  # and so on and so on
# )
#  Answer 32426.7




## ----------------------------------------------------------------------------------------------------------
## QUIZ 3  QUIZ 3  QUIZ 3  QUIZ 3  QUIZ 3  QUIZ 3  QUIZ 3  QUIZ 3  QUIZ 3  QUIZ 3  QUIZ 3  QUIZ 3  QUIZ 3  QUIZ 3   
## ----------------------------------------------------------------------------------------------------------


# Question 1
# The American Community Survey distributes downloadable data about United States communities. Download the 2006 microdata survey about housing for the state of Idaho using download.file() from here: 
#     
#     https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06hid.csv 
# 
# and load the data into R. The code book, describing the variable names is here: 
#     
#     https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FPUMSDataDict06.pdf 
# 
# Create a logical vector that identifies the households on greater than 10 acres who sold more than $10,000 worth of agriculture products. Assign that logical vector to the variable agricultureLogical. Apply the which() function like this to identify the rows of the data frame where the logical vector is TRUE. which(agricultureLogical) What are the first 3 values that result?
# 
# Answer 125, 238,262
# data = read.csv("https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06hid.csv")
# which(data$ACR==3 & data$AGS==6)



# Question 2
# Using the jpeg package read in the following picture of your instructor into R 
# 
# https://d396qusza40orc.cloudfront.net/getdata%2Fjeff.jpg 
# 
# Use the parameter native=TRUE. What are the 30th and 80th quantiles of the resulting data? (some Linux systems may produce an answer 638 different for the 30th quantile)
#  
# 
# Answer
# -15259150 -10575416
#  
# packageVersion("jpeg")
# image = jpeg::readJPEG("jeff.jpg",native = T)
# quantile(image,c(0.3,0.8))



# Question 3
# Load the Gross Domestic Product data for the 190 ranked countries in this data set: 
#     
#     https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FGDP.csv 
# 
# Load the educational data from this data set: 
#     
#     https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FEDSTATS_Country.csv 
# 
# Match the data based on the country shortcode. How many of the IDs match? Sort the data frame in descending order by GDP rank (so United States is last). What is the 13th country in the resulting data frame? 
# 
# Original data sources: 
#     http://data.worldbank.org/data-catalog/GDP-ranking-table 
# http://data.worldbank.org/data-catalog/ed-stats


# data = read.csv("https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FGDP.csv",stringsAsFactors = F)
# data1 = read.csv("https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FEDSTATS_Country.csv",stringsAsFactors = F)
# 
# res = merge(data,data1,by.x = "X",by.y="CountryCode")
# res = res[res$Gross.domestic.product.2012 !="",c("X","Gross.domestic.product.2012")]
# res[order(as.numeric(as.character(res$Gross.domestic.product.2012)),decreasing = T),c(1,2)][13,]
# Answer =  189 matches, 13th country is St. Kitts and Nevis


# Question 4
# What is the average GDP ranking for the "High income: OECD" and "High income: nonOECD" group?
# 32.96667, 91.91304

#res = merge(data,data1,by.x = "X",by.y="CountryCode")
# aveIn = res %>% group_by(Income.Group,na.rm = T) %>% summarise(avg = mean(Gross.domestic.product.2012,na.rm = T) )  %>% filter(!is.na(avg)) %>% select(Income.Group,avg)
# REMARK got errors by putting the name of the dataset$ in the mean function, dplyr does not like it

# Question 5
# qg = quantile(res$Gross.domestic.product.2012,c(0,0.20,0.40,0.60,0.80,1),na.rm = T)
# Remark: include lowest is very useful 
# res$GdpQ  =  cut(res$Gross.domestic.product.2012,qg,include.lowest = T)
# table(res$Income.Group,res$GdpQ,useNA = "no")
# Check
# res[res$Income.Group=="Lower middle income" & res$GdpQ == "(143,190]" & !is.na(res$GdpQ == 4),c("X","Gross.domestic.product.2012","GdpQ")]
# The answer is 5





##-------------------------------------- WEEK 4 ----------------------------------------
##-------------------------------------- WEEK 4 ----------------------------------------
##-------------------------------------- WEEK 4 ----------------------------------------
##-------------------------------------- WEEK 4 ----------------------------------------

## Question 1 
## Answer '"" '15"

# Question 2
# Load the Gross Domestic Product data for the 190 ranked countries in this data set: 
#     
#     https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FGDP.csv 
# 
# Remove the commas from the GDP numbers in millions of dollars and average them. What is the average? 
# 
# Original data sources: http://data.worldbank.org/data-catalog/GDP-ranking-table
#
# ANSWER 377652.4
# data = read.csv("https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FGDP.csv", skip=4)
# mean(sapply(data$X.4[1:190],function(x) {  n=gsub(",","",x);  as.numeric(n) }) , na.rm= T )
#


# Question 3
# In the data set from Question 2 what is a regular expression that would allow you to count the number of countries whose name begins with "United"? Assume that the variable with the country names in it is named countryNames. How many countries begin with United?
# Answer 
# grep("^United",countryNames), 3



# 
# Question 4
# Load the Gross Domestic Product data for the 190 ranked countries in this data set: 
#     
#     https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FGDP.csv 
# 
# Load the educational data from this data set: 
#     
#     https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FEDSTATS_Country.csv 
# 
# Match the data based on the country shortcode. Of the countries for which the end of the fiscal year is available, how many end in June? 
# 
# Original data sources: 
#     http://data.worldbank.org/data-catalog/GDP-ranking-table 
# http://data.worldbank.org/data-catalog/ed-stats
# 13
# 15
# 8
# 31

# 
# Question 4
# Load the Gross Domestic Product data for the 190 ranked countries in this data set: 
#     
#     https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FGDP.csv 
# 
# Load the educational data from this data set: 
#     
#     https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FEDSTATS_Country.csv 
# 
# Match the data based on the country shortcode. Of the countries for which the end of the fiscal year is available, how many end in June? 
# 
# Original data sources: 
#     http://data.worldbank.org/data-catalog/GDP-ranking-table 
# http://data.worldbank.org/data-catalog/ed-stats
# 13
# data = read.csv("https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FGDP.csv", skip = 4)
# data = data[1:190,]
# data1 = read.csv("https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FEDSTATS_Country.csv")
# length(grep("^Fiscal year end: June",datasum$Special.Notes))



# 
# Question 5
# You can use the quantmod (http://www.quantmod.com/) package to get historical stock prices for publicly traded companies on the NASDAQ and NYSE. Use the following code to download data on Amazon's stock price and get the times the data was sampled.
# library(quantmod)
# amzn = getSymbols("AMZN",auto.assign=FALSE)
# sampleTimes = index(amzn) 
# How many values were collected in 2012? How many values were collected on Mondays in 2012?
#  


# install.packages('quantmod')
# library(quantmod)
# amzn = getSymbols("AMZN",auto.assign=FALSE)
# sampleTimes = index(amzn) 
# 
# install.packages("lubridate")
# library("lubridate")
# sampleTimes[year(sampleTimes)==2012]   
# 250
# sampleTimes[year(sampleTimes)==2012 & weekdays(sampleTimes)=="Monday"]
# 47
# 
# Answer 250,47



