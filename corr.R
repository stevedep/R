    corr <- function(directory, nobs=0 ) {
    id <- 1:332
    directory <- paste("C:/Users/Steve/Downloads/rprog-data-specdata/", directory, "/", sep="")
  #data <- read.csv(paste(directory, "001.csv", sep=""))
  #  data <- subset(data, ID == 99999)
   
 # print("voor de for")
 v <- data.frame(nobs= numeric(0))
  for (i in id) {
    file <- paste("000", i, sep="")
    file2 <- substr(file, nchar(file) - 2, nchar(file))
    temp <- read.csv(paste(directory, toString(file2), ".csv", sep=""))
    x <- complete.cases(temp)
    y <- nrow(temp[x, ][, ])
        if (y > nobs) {
      print(paste("aantal:", y, sep=""))
        temp2 <- temp[x, ][, ]
    print(nrow(temp2[1]))
      print(cor(temp2[2],temp2[3]))
    v <- rbind(v, data.frame(nobs=cor(temp2[2],temp2[3])))
       }
  
  }
  v[,1]
}
  