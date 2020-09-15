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

# Part 1B 
# today's date
Sys.Date()
# name date to today.date
Date <- Sys.Date()
# asng name today.date to date
Today.Date <- Date
Today.Date
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

log_AMZNAdj <- head(logreturns)
# end 6

# start 7a
#library(quantmod)
#getSymbols("AAPL", src = "yahoo", from='2019-01-01', to='2019-12-31')
AAPLAdj <- AAPL$AAPL.Adj
# See if the dataset is a ts object
is.ts(AAPLAdj)

#7b

monthly.AAPL <- monthlyReturn(AAPLAdj, subset=NULL, type='log', leading=TRUE) 
# Auto correlation function
acf(monthly.AAPL, lag.max = 10, plot = FALSE)

# Partial auto correlation function estimates for SP500_ts up to lag 5
pacf(monthly.AAPL, lag.max = 10, plot = FALSE)


