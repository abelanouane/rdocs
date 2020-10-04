install.packages("tseries")
library(tseries)
library(xts).

#Start of 1

# Create "hw4" by reading hw4.csv file
#hw4 <- read.csv("C:/Users/adamb/Documents/Code_Projects/rdocs/hw4.csv")
hw4 <- read.csv("C:/Users/adamb/Documents/Code_Projects/rdocs/hw4.csv")
class(hw4)

# Convert to xts (may stop here)
rtn <- as.xts(hw4[, -1], order.by = as.Date(hw4$Date, "%m/%d/%Y"))
class(rtn)


# Dimensions of returns
dim(rtn)

# Review the first 6 data
head(rtn)


# Create a vector of row means
ew_rtn <- rowMeans(rtn)

# Convert numeric to xts
ew_rtn <- as.xts(ew_rtn, order.by = time(rtn))
class(ew_rtn)

# Plot ew_rtn
plot.zoo(ew_rtn)

# End 1

# start 2

library(tseries)
# Find mean-variance efficient portfolio with target return 5%
eff_port <- portfolio.optim(rtn, pm = 0.05, shorts = TRUE)
eff_port$pw

# monthly returns (select 1:8)
eff_port$px

# Standard deviation of mean-variance efficient portfolio with target return 5%
eff_port$ps

# end 2

# Start 3

# Calculate mean returns for each stock (means of each column)
mu <- colMeans(rtn)

# Create a grid of target returns
grid <- seq(0.005, 0.033, length.out = 133)
#grid <- seq(0.005, max(mu), length.out = 60)

# Create empty vectors to store means and standard deviations
vector_pm <- rep(NA, length(grid))
vector_psd <- rep(NA, length(grid))

# Create an empty matrix to store weights
eff_weights <- matrix(NA, 133, 8)

# Create for loop to find efficient frontier
for (i in 1 : length(grid)) {
  eff.port <- portfolio.optim(rtn, pm = grid[i], shorts =TRUE)
  vector_pm[i] <- eff.port$pm
  vector_psd[i] <- eff.port$ps
  eff_weights[i, ] <- eff.port$pw
}

# Plot efficient frontier
plot(vector_psd, vector_pm, xlab = 'Standard Deviation', ylab = 'Expected Return', xlim = c(0, 0.1), ylim = c(0, 0.035))

# End 3

# Start 4

# Calculate the Sharpe ratio
sharpe <- (vector_pm - 0.002) / vector_psd

# Find maximum Sharpe ratio
max_sharpe <- max(sharpe)
max_sharpe
# Combine three vector
psd_pm_sharpe <- cbind(vector_psd, vector_pm, sharpe)
# Find tangency point
tan <- psd_pm_sharpe[sharpe == max_sharpe]
points(tan[1], tan[2], col = "red", lwd = 5)
tan

# Plot CAL
abline(a = 0.002, b = max_sharpe, col = "blue", lwd = 2)

# End 4
