(#v <- complete("specdata", 1:332)
#subset(v, nobs > 300)


cor <- function(directory, nobs=0 ) {
  id <- 1:332
  directory <- paste("C:/Users/Steve/Downloads/rprog-data-specdata/", directory, "/", sep="")

  data <- read.csv(paste(directory, "001.csv", sep=""))
  data <- subset(data, ID == 99999)

  
  v <- data.frame(id= integer(0), nobs= integer(0))
   # print("voor de for")
  for (i in id) {
    file <- paste("000", i, sep="")
    file2 <- substr(file, nchar(file) - 2, nchar(file))
    temp <- read.csv(paste(directory, toString(file2), ".csv", sep=""))
    x <- complete.cases(temp)
    #y <- nrow(temp[x, ][, ])
#    if (y > nobs) {
    #  print(paste("aantal:", y, sep=""))
    #  data <- rbind(data,temp)
 #   }
    #v <- rbind(v, data.frame(id=i,nods=nrow(temp[x, ][, ])))
  }
 y
 # print("test")
}

