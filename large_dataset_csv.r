require("ETLUtils")

mydata <- read.csv.ffdf(
            file="large_dataset.csv",
            na.strings='NULL', dec=".",
            header=TRUE,
            VERBOSE=TRUE,
            colClasses=NA)

dim(mydata)