# Create SP500 by reading S&P500.csv file
SP500 <- read.csv("C:/users/skim/Google Drive/LSUS/2019 Spring/FIN 740/Module 3/Chapter 4/S&P500.csv")


# Convert the numeric vector into time series object from 2009 to 2018
SP500_ts <- ts(SP500, start = 2009, frequency = 52)

# Plot time series SP500_ts
plot(SP500_ts)



# See if the dataset is a ts object
is.ts(EuStockMarkets)

# See other information (start, end, and frequency of the dataset)
start(EuStartMarkets)
end(EuStartMarkets)
frequency(EuStockMarkets)


# Simple plot of EuStockMarkets
plot(EuStockMarkets)

# Cumulative plot with labels and title
ts.plot(EuStockMarkets, col = 1:4, xlab = "Year", ylab = "Index", main = "European Stock Indices (1991 - 1998)")
# Add a legend
legend("topleft", colnames(EuStockMarkets), lty = 1, col = 1:4, bty = "n")

# Palette
palette()


# First difference of SP500_ts
dSP500_ts <- diff(SP500_ts)
ts.plot(dSP500_ts, main = 'First difference of SP500_ts')

# First difference of SMI Indices
dSMI <- diff(EuStockMarkets[,2])
ts.plot(dSMI, main = 'First difference of SMI Indices')

# Removing nonlinear trend by taking logarithms
logSMI <- log(EuStockMarkets[,2])
ts.plot(logSMI)



# Create autosales by reading autosales.csv file
autosales <- read.csv("C:/users/skim/Google Drive/LSUS/2019 Spring/FIN 740/Module 3/Chapter 4/autosales.csv")

# Convert the numeric vector into time series object from 1970 to 1998 (monthly)
autosales_ts <- ts(autosales, start = 1970, frequency = 12)

# Plot the series
ts.plot(autosales_ts, col = 'blue', xlab = 'Year', ylab = 'Auto Sales', main = 'Time Series for Auto Sales (1970 - 1998)')


# Generate difference of the data with lag = 12
dautosales_ts <- diff(autosales_ts, lag = 12)
ts.plot(dautosales_ts)


# Simulation of stationary process
sp <- arima.sim(model = list(c(0, 0, 0)), n = 200)
ts.plot(sp, ylab = 'Stationary Process')


# Generate autocorrelation estimates for SP500_ts up to lag-5
SP500 <- read.csv("C:/users/skim/Google Drive/LSUS/2019 Spring/FIN 740/Module 3/Chapter 4/S&P500.csv")
SP500ts <- ts(SP500)
acf(SP500ts, lag.max = 5, plot = FALSE)

# Partial autocorrelation estimates for SP500_ts up to lag-5
pacf(SP500ts, lag.max = 5, plot = FALSE)

