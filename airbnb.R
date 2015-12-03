setwd("C:/Users/April/Desktop")
#data downloaded from http://insideairbnb.com/get-the-data.html
air <- read.csv("listings.csv")
str(air)
zips <- table(air$zipcode)
zips <- sort(zips, decreasing=TRUE)
#example of how to find frequency of zipcode:
#zips[grep("10128", names(zips))]
#10128
#  399
