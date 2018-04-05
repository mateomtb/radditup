addit <- function(descvalue) {
  
  library(stats)
  library(dplyr)
  
  #load the csv file into mydata
  mydata <- read.csv('sample.csv')
  
  #find all instances of the name you passed the function in the csv column named "Description"
  desctotal <- filter(mydata, grepl(descvalue, Description))
  
  #add all the values together that have the same "Description"
  sum(as.numeric(gsub('\\$|,', '', desctotal$Amount)))


}
