# Create a randome numeric vector containing 36 monthly observations
monthly_data <- rnorm(36)

# Convert the vector into time series object from Jan 2016 to Dec 2018
monthly_ts <- ts(monthly_data, start = c(2016, 1), end = c(2018, 12), frequency = 12)

# Print monthly_ts
monthly_ts

# Check the class of monthly_ts
class(monthly_ts)


# Plot a numeric vector montly_data
plot(monthly_data)

# Plot ts object monthly_data_ts
plot(monthly_ts)





# Load xts
library(xts)

# Create the object daily_data using 10 random numbers
daily_data <- rnorm(10)

# Create dates as a Date class object starting from 2019-01-01
dates <- seq(as.Date("2019-01-01"), length = 10, by = "days")

# Use xts to create xts called daily_xts using data and dates
daily_xts <- xts(x = daily_data, order.by = dates)

# Convert xts data daily_xts into a matrix daily_mat
daily_mat <- as.matrix(daily_xts)
class(daily_mat)

# Convert matrix daily_data_mat into xts data daily_data_xts2
daily_xts2 <- as.xts(daily_mat)
class(daily_xts2)


# Create AMZN_price by reading AMZN_price.csv file
AMZN_price <- read.csv("C:/Users/skim/Google Drive/LSUS/2019 Spring/FIN 740/Module 2/Chapter 3/AMZN_price.csv", header =  TRUE)

# Print AMZN_price
AMZN_price

# Print the first 6 rows on AMZN
head(AMZN_price)

# Check the class of AMZN_price
class(AMZN_price)

# Convert AMZN_price into xts
AMZN_price_xts <- as.xts(AMZN_price[, -1], order.by = as.Date(AMZN_price$Date, "%m/%d/%Y"))
class(AMZN_price_xts)

# Create AMZN_volume by reading AMZN_volume.csv file
AMZN_volume <- read.csv("C:/Users/skim/Google Drive/LSUS/2019 Spring/FIN 740/Module 2/Chapter 3/AMZN_volume.csv", header =  TRUE)

# Convert AMZN_volume into xts
AMZN_volume_xts <- as.xts(AMZN_volume[, -1], order.by = as.Date(AMZN_volume$Date, "%m/%d/%Y"))
class(AMZN_volume_xts)

# Merge AMZN_price_xts and AMZN_volume_xts
merge(AMZN_price_xts, AMZN_volume_xts, join = "inner")

# Use "left"-join of AMZN_price_xts and AMZN_volume_xts
merge(AMZN_price_xts, AMZN_volume_xts, join = "left")


# Create AMZN_1202 by reading AMZN_1202.CSV file
AMZN_1202 <- read.csv("C:/Users/skim/Google Drive/LSUS/2019 Spring/FIN 740/Module 2/Chapter 3/AMZN_1202.csv", header =  TRUE)

# Convert AMZN_1202 into xts
AMZN_1202_xts <- as.xts(AMZN_1202[, -1], order.by = as.Date(AMZN_1202$Date, "%m/%d/%Y"))

# Bind the row from 12-2-2018 (AMZN_1202_xts) to AMZN_price_xts, and call it AMZN_PRICE_xts
AMZN_PRICE_xts <- rbind(AMZN_1202_xts, AMZN_price_xts)



# Convert prices to returns
returns <- EuStockMarkets[-1,] / EuStockMarkets[-1860,] - 1
head(returns)

# Convert prices to log returns
logreturns <- diff(log(EuStockMarkets))
head(logreturns)
