#Fin 740 Project Autozone
# In this project I will be reaserching Autozone with a stock symbol AZO

# start 1

# Install package 'quantmod' and load it
install.packages("quantmod")
library(quantmod)

# download data for AZO (*01/01/2010-06/01/2020)
getSymbols("AZO", src = "yahoo", from='2010-01-01', to='2020-06-31')

# Obtain monthly log stock returns.
AZO.rtn <- monthlyReturn(AZO$AZO.Adjusted, subset=NULL, type='log', leading=TRUE)

# Change the data type to ts. 
rtn <- ts(AZO.rtn, frequency = 12, start = c(2010,1))

#Install asat
install.packages("astsa")
library(astsa)

# fit an AR(1)
x_fit <- sarima(rtn, p = 1, d = 0, q = 0)
x_fit
