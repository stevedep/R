pollutantmean <- function(directory, pollutant, id = 1:332) {
  directory <- paste("C:/Users/Steve/Downloads/rprog-data-specdata/", directory, "/", sep="")
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

