# install.packages("ETLUtils")
require("ETLUtils")
require(ffbase)
require(RPostgreSQL)

login <- list()

login$user <- "username"
login$password <- "password"
login$dbname <- "dbname"
login$host <- "localhost"

testQuery <- "select * from test_table"

#  import large datasets into R
resultSet <- read.dbi.ffdf(
    query = testQuery,
    dbConnect.args = list(
                drv = dbDriver("PostgreSQL"),
                dbname = login$dbname,
                user = login$user,
                password = login$password,
                host = login$host),
    VERBOSE=TRUE)

sum(
    resultSet$Impression[,],
    na.rm=TRUE
    )
