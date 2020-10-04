library(xts)

# Create "DJIA" by reading DJIA.csv file
#DJIA <- read.csv("C:/users/skim/Google Drive/LSUS/2019 Fall/FIN 740/Module 4/Chapter 6/DJIA.csv")
DJIA <- read.csv("C:/users/owner/Google Drive/LSUS/2019 Fall/FIN 740/Module 4/Chapter 6/DJIA.csv")
class(DJIA)

# Convert to xts
returns <- as.xts(DJIA[, -1], order.by = as.Date(DJIA$Date, "%m/%d/%Y"))
class(returns)


# Dimensions of returns
dim(returns)

# Review the first 6 data
head(returns)


# Create a vector of row means
ew_returns <- rowMeans(returns)

# Convert numeric to xts
ew_returns <- as.xts(ew_returns, order.by = time(returns))
class(ew_returns)

# Plot ew_returns
plot.zoo(ew_returns)





# Install and load package tseries
#install.packages("tseries")
#library(tseries)


# Find mean-variance efficient portfolio with target return 5%
eff_port <- portfolio.optim(returns, pm = 0.05, shorts = TRUE)
eff_port$pw

# Standard deviation of mean-variance efficient portfolio with target return 5%
eff_port$ps




# Calculate mean returns for each stock (means of each column)
mu <- colMeans(returns)

# Create a grid of target returns
grid <- seq(0.005, 0.033, length.out = 60)
#grid <- seq(0.005, max(mu), length.out = 60)

# Create empty vectors to store means and standard deviations
vector_pm <- rep(NA, length(grid))
vector_psd <- rep(NA, length(grid))

# Create an empty matrix to store weights
eff_weights <- matrix(NA, 60, 30)

# Create for loop to find efficient frontier
for (i in 1 : length(grid)) {
  eff.port <- portfolio.optim(returns, pm = grid[i], shorts =TRUE)
  vector_pm[i] <- eff.port$pm
  vector_psd[i] <- eff.port$ps
  eff_weights[i, ] <- eff.port$pw
}

# Plot efficient frontier
plot(vector_psd, vector_pm, xlab = 'Standard Deviation', ylab = 'Expected Return', xlim = c(0, 0.1), ylim = c(0, 0.035))


# Calculate the Sharpe ratio
sharpe <- (vector_pm - 0.005) / vector_psd
# Find maximum Sharpe ratio
max_sharpe <- max(sharpe)

# Combine three vector
psd_pm_sharpe <- cbind(vector_psd, vector_pm, sharpe)
# Find tangency point
tan <- psd_pm_sharpe[sharpe == max_sharpe]
points(tan[1], tan[2], col = "red", lwd = 5)

# Plot CAL
abline(a = 0.005, b = max_sharpe, col = "blue", lwd = 2)

