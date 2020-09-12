# Start Of Q1
# Part 1A
# Assign the name TODAY to today's date using Sys.Date() in the following format: 01/25/2020

# Today's date
Sys.Date()

# Assign to Date
today <- Sys.Date()

#Format to "month as number day as number 4-dig year
format(today, format = "%m %d %Y")
today

# Part 1B change comments
# today's date
sys.Date()
# name date to todays date
date <- sys.Date()
# asng name today.date to date
today.date <- date
today.date
# End of Q1

#2

mystock <- "Microsoft"
  if (mystock == "Microsoft") {
    print ("My return is 1%.");
  } else if (mystock == "Apple") {
   print ("My return is 3%.")
  } else {
   print ("You do not have enough shares to sell.");
  }


mystock

# End of Q2

# Start of Q3
Start of Q3
n <- 10
repeat {
  #print (n)
  
  n = n + 1
  
  if ((n %% 2) == 1) {
    print (n)
  }
  if (n == 24) {
    break
  }
}
#end 3

# start 4
# while loop
n <- 6
while(n < 20){
  if((n%%2) == 0){
    print(n)
  }
  n = n+1
}
#end 4
#start 5
n <- seq(from = 13, to = 28)

for (i in n) {
  if (i %% 2 == 0) {
    print (i)
  }
}
#end 5

# Start 6

#install.packages("quantmod")
#library(quantmod)
#getSymbols("AMZN", src = "yahoo", from='2020-03-01', to='2020-04-30')

AMZNAdj <- AMZN$AMZN.Adjusted

# Convert prices to log returns
logreturns <- diff(log(AMZNAdj))
head(logreturns)

# end 6

# start 7
library(quantmod)
getSymbols("AAPL", src = "yahoo", from='2019-01-01', to='2019-12-31')

AAPLAdj <- AAPL$AAPL.Adj
# Create SP500 by reading S&P500.csv file
AAPLAdj <- read.csv("C:/Users/adamb/Documents/Code_Projects/rdocs/APPL.cvs")
# Convert the data frame into time series object from Jan 2009 to Dec 2018
AAPLAdj_ts <- ts(AAPLAdj, start = 2019, frequency = 52)
# Plot time series SP500_ts
Plot(AAPLAdj_ts)

AAPLAdj <- AAPL$AAPL.Adj
# Convert the data frame into time series object from Jan 20019 to Dec 2019
AAPLAdj_ts <- ts(AAPLAdj, start = 2019, frequency = 52)
# Plot time series SP500_ts
Plot(AAPLAdj_ts)
