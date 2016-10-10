# install.packages("RPostgreSQL")
require("RPostgreSQL")

login <- list()

login$user <- "username"
login$password <- "password"
login$dbname <- "dbname"
login$host <- "localhost"
login$port <- 5432

testQuery <- "select * from test_table"

# loads the PostgreSQL driver
drv <- dbDriver("PostgreSQL")

# creates a connection to the postgres database
con <- dbConnect(drv = dbDriver("PostgreSQL"),
                 dbname = login$dbname,
                 user = login$user,
                 port = login$port,
                 password = login$password,
                 host = login$host)

# check for the table
dbExistsTable(con, "variable")

# load data in-memory
df_postgres <- dbGetQuery(con, testQuery)
df_postgres
