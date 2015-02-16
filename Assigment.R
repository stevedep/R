#data <- read.csv("C:/Users/Steve/Downloads/rprog-data-specdata/specdata/001.csv")
#data2 <- read.csv("C:/Users/Steve/Downloads/rprog-data-specdata/specdata/002.csv")

#directoryvar <- "C:/Users/Steve/Downloads/rprog-data-specdata/specdata/00"

pollutantmean <- function(directory, pollutant, id = 1:332) {
  data <- read.csv(paste(directory, "001.csv", sep=""))
  data <- subset(data, ID == 99999)
  for (i in id) {
   file <- paste("000", i, sep="")
   file2 <- substr(file, nchar(file) - 2, nchar(file))
   temp <- read.csv(paste(directory, toString(file2), ".csv", sep=""))
   data <- rbind(data, temp)
  }
  if (pollutant == "sulfate") { x <- 2 }
  else if (pollutant == "nitrate") { x <- 3 }
  mean(data[,x], na.rm = TRUE)
}

