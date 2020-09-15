# Simualte AR(1) process with 0.1 slope
x <- arima.sim(model = list(ar = c(0.4)), mean = 0, n = 100) 

# Simulate AR(1) process with 0.9 slope
y <- arima.sim(model = list(ar = c(0.9)), mean = 0, n = 100)

# Simualte AR(1) process with -0.8 slope
z <- arima.sim(model = list(ar = c(-0.8)), mean = 0, n = 100)

# Plot the simulated data
plot.ts(cbind(x, y, z))

# Plot the ACF for x, y, and z
acf(x)
acf(y)
acf(z)

# Plot the PACF for x, y, and z
pacf(x)
pacf(y)
pacf(z)

# Simulate AR(1) process with 0.9 slope
x <- arima.sim(model = list(ar = c(0.9)), mean = 0, n = 200 )
ts.plot(x)
acf(x)

# Simulate AR(1) process with 0.98 slope
y <- arima.sim(model = list(ar = c(0.98)), mean = 0, n = 200 )
ts.plot(y)
acf(y)

# Simulate random walk process
z <- arima.sim(model = list(order = c(0, 1, 0)), n = 200)
ts.plot(z)
acf(z)




# Simulate MA(1) process with 0.4 slope
x <- arima.sim(model = list(ma = 0.4), n = 100)

# Simulate MA(1) process with 0.9 slope
y <- arima.sim(model = list(ma = 0.9), n = 100)

# Simulate MA(1) process with -0.6 slope
z <- arima.sim(model = list(ma = -0.6), n = 100)

# Plot simulated data
plot.ts(cbind(x, y, z))

# Plot the ACF for x, y, and z
acf(x)
acf(y)
acf(z)

# Plot the PACF for x, y, and z
pacf(x)
pacf(y)
pacf(z)






install.packages("astsa")
library(astsa)

# Generate the AR(1) process with 200 observations
set.seed(160)
x <- arima.sim(model = list(order = c(1, 0, 0), ar = 0.87), n = 200)

# Plot the generated series
plot(x)

# Plot the sample ACF and PACF
acf2(x)

# Fit an AR(1) to the series generated from simulation
x_fit <- sarima(x, p = 1, d = 0, q = 0)
x_fit



# Generate the AR(2) process with 200 observations
set.seed(150)
x <- arima.sim(model = list(order = c(2, 0, 0), ar = c(1.65, -0.8)), n = 200)

# Plot the generated series
plot(x)

# Plot the sample ACF and PACF
acf2(x)

# Fit an AR(2) to the series generated from simulation
x_fit <- sarima(x, p = 2, d = 0, q = 0)
x_fit


# Generate the MA(1) process with 200 observations
set.seed(140)
x <- arima.sim(model = list(order = c(0, 0, 1), ma = -0.85), n = 200)

# Plot the generated series
plot(x)

# Plot the sample ACF and PACF
acf2(x)

# Fit an MA(1) to the series generated from simulation
x_fit <- sarima(x, p = 0, d = 0, q = 1)
x_fit


# Generate the ARMA(1, 2) process with 200 observations
set.seed(140)
x <- arima.sim(model = list(order = c(1, 0, 2), ar = 0.9, ma = c(1.6, 0.8)), n = 200)

# Plot the generated series
plot(x)

# Plot the sample ACF and PACF
acf2(x)

# Fit an ARMA(1, 2) to the series generated from simulation
x_fit <- sarima(x, p = 1, d = 0, q = 2)


# Generate ARMA(1, 1) process with 200 observations
set.seed(140)
x <- arima.sim(model = list(order = c(1, 0, 1), ar = 0.9, ma = 1.6), n = 200)

# Fit an AR(1) to the series
ar1_fit <- sarima(x, p = 1, d = 0, q = 0)
ar1_fit

# Fit a MA(1) to the series
ma1_fit <- sarima(x, p = 0, d = 0, q = 1)
ma1_fit

# Fit a ARMA(1, 1) to the series
arma11_fit <- sarima(x, p = 1, d = 0, q = 1)
arma11_fit

