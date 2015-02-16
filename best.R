#outcome <- read.csv("3/outcome-of-care-measures.csv", colClasses="character")
#head(outcome)
#outcome[, 17] <- as.numeric(outcome[, 17])
#outcome[, 23] <- as.numeric(outcome[, 23])

best <- function(statevar, aandoening) {
  ss <- subset(outcome, State==statevar)
  
if (nrow(ss) == 0) {stop("invalid state")} else {
  if (aandoening == "heart attack") {
    min(ss[,11], na.rm = TRUE)
    x <- min(ss[,11], na.rm = TRUE)    
    result <- subset(ss, Hospital.30.Day.Death..Mortality..Rates.from.Heart.Attack  ==x) }
  else if (aandoening == "heart failure") {
    min(ss[,17], na.rm = TRUE)
    x <- min(ss[,17], na.rm = TRUE)
    result <- subset(ss, Hospital.30.Day.Death..Mortality..Rates.from.Heart.Failure  ==x)
  }
  else if (aandoening == "pneumonia") {
    min(ss[,23], na.rm = TRUE)
    x <- min(ss[,23], na.rm = TRUE)
    result <- subset(ss, Hospital.30.Day.Death..Mortality..Rates.from.Pneumonia  ==x)
  }
  else {stop("invalid outcome")}
 # result[2]
  uitkomst <- sort(result[[2]])
  uitkomst[[1]]
  }
}
