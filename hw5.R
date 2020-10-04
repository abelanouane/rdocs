# start 1

# Create time t
t <- seq(1, 4, 1)

# Create present value factor
pv_factor <- 1 / (1 + 0.05)^t

# Current bond price
bond_value <- 1157.449

# Par value
c_rate <- (1157.449 - 1200 / (1+0.05)^4) / (1200*sum(pv_factor))

c_rate
[1] 0.0400001

# Fill in code 
c_rate <- function (bond_value, par, ttm, y) {
  
}