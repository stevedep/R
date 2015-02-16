complete <- function(directory, id = 1:332) {
  directory <- paste("C:/Users/Steve/Downloads/rprog-data-specdata/", directory, "/", sep="")
  v <- data.frame(id= integer(0), nobs= integer(0))
  for (i in id) {
    file <- paste("000", i, sep="")
    file2 <- substr(file, nchar(file) - 2, nchar(file))
    temp <- read.csv(paste(directory, toString(file2), ".csv", sep=""))
    x <- complete.cases(temp)
    v <- rbind(v, data.frame(id=i,nobs=nrow(temp[x, ][, ])))
  }
  
  
  v
}
