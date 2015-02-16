#data <- read.csv("C:/Users/Steve/Downloads/rprog-data-quiz1_data/hw1_data.csv")
x <- complete.cases(data[1])
#x <- is.na(data[1])
#mean(data[x,1])
data[x,][1,]
#y <- subset(data, Ozone > 31 & Temp > 90)
#mean(y[,2])
#y <- subset(data, Month == 5 & is.na(Ozone))
#y
#max(y[,1])
