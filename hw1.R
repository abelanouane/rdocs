# Start Q1

# Create a variable for ending_myinvestment
ending_investment <- 21420

# How much do you have at the start of February?
feb_myinvestment <- ending_investment/1.05
feb_myinvestment

# How much do you have at the start of January?
jan_myinvestment <- ending_investment/(1.05*1.02)
jan_myinvestment

#or
jan_myinvestment <- feb_myinvestment/1.02
jan_myinvestment

#End Q1

# Start Q2

# Weighted average
# Weights and returns
ret_A <- 5
ret_B <- -4
weight_A <- 0.6
weight_B <- 0.4

# Portfolio return
ret_portfolio <- weight_A*ret_A+weight_B*ret_B
ret_portfolio

# END Q2

# Start Q3
# formula m = (p*i)/[1-(1/(1+i)^n)]

# Assign $200000 in variable p
p <- 200000

# Assign 360 to variable n
n <- 360

# Assign .003 to variable i
i <- 0.003

# z/w then assign new variable M
m <- p*i / 1-1/(1 + i)^n
m
#start of 3b
# Create variable p with a vecto6r (150000, 180000, 220000)
p <- c(150000, 180000, 220000)

# Assign 360 to variable n
n <- 360

# Assign .003 to variable i
i <- 0.003

# Assign m to variable
m <- p[1:3]*i / 1-1/(1 + i)^n
m
# End of Q3

# Start Q4

# Create variable x with a vector (1, 2, 3, 4, 5, 6)
x <- c(1:6)

# Create variable y with a vector (5, 5, 5, 5, 5, 5)
y <- c(5)

# Save the result of multiplying x and y to z
z <- x * y
z

# 4b

# Create variable x with a vector (4:19)
x <- c(4:19)

# Create variable y with a vector (0:3)
y <- c(0:3)

# Modulo
z <- y %% x 
z

# End Q4

# Start Q5

# script provided

set.seed(100)
x <- round(rnorm(18, mean=2, sd=.1),2)
x

# created matrix 3x6 w/ x

matrix(data=c(x), nrow=3, ncol=6)

# Assign name
x.mat <- matrix(data=c(x), nrow=3, ncol=6)


# End Q5

# Start Q6

# x vector
x.vec <- c(2,5,6,8,3)

# add x.vec titles
names(x.vec) <- c("Apple","Samsung","Amazon","CVS","Walmart")

x.vec

# End Q6

# Start Q7

y.mat <- matrix(1:12, nrow = 4, ncol = 3)

nrownames <- c("AAA","AA", "A", "BBB")
ncolnames <- c("New York","Boston", "Dallas")

rownames(y.mat) <- nrownames
colnames(y.mat) <- ncolnames

y.mat
# End Q7

# Start Q8 

# Create Data and plot
myportfolio <- data.frame( company=c("XXX","YYY","ZZZ"), stock_price = c(56, 86, 62), Volume=c(1500,4100,2800))
myportfolio

# Select One row
tail(myportfolio, n=1)

# End Q8
