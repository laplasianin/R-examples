require("ETLUtils")

mydata <- read.csv.ffdf(file="1475235470607_src_o_bkg.csv", na.strings='NULL', dec=".", header=TRUE, VERBOSE=TRUE, colClasses=NA)
dim(mydata)