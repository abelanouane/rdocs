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

mystock <- "asfase"
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

n <- 10
print(n)
repeat {
  if (n %% 2 == 0) {
    print(n)
  }
  n <- n + 1
  if (n == 24) {
    break
  }
}


for (i in 1:24) {
  # print(i)
  if (i %% 2 == 0) {
    print(n)
  } else if (i == 24) {
    break
  }
}






x <- c(n:m)

z <- n %% m

(n % m == 0) {
  
}


if (test expression 1) {
  statement 1
} else if (test expression 2) {
  statement 2


# Current date and time
Sys.time()

# The collapse of Lehman Brothers
lb_bankruptcy <- as.Date("2008-09-15")
lb_bankruptcy

#lb_bankruptcy as a numeric
as.numeric(lb_bankruptcy)

# Current time as a numeric
as.numeric(Sys.time())


# Create a vector of dates as character
dates <- c("2019-01-01", "2019-01-02", "2019-01-03", "2019-01-04", "2019-01-05")

# Create dates
as.Date(dates)

# Assign the days of the week
names(dates) <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")
dates

# Subset the dates to return only the date for Tuesday
dates["Tuesday"]




# Print today's date
today <- Sys.Date()
format(today, format = "%B %d %Y")

# Convert date info in format 'mm/dd/yyyy'
dates <- c("01/01/2019", "01/02/2019", "01/03/2019", "01/04/2019", "01/05/2019")
as.Date(dates, format = "%m / %d / %Y")

# Convert dates to character data
strDates <- as.character(dates)
strDates

# Subtraction of dates
first_crash <- as.Date("2008-07-13")
second_crash <- as.Date("2008-11-14")
second_crash - first_crash

# Alternative way to find date interval
difftime(second_crash, first_crash)


# Comparing two vectors
samsung <- c(223.28, 226.23, 234.58, 228.29, 230.75)
apple <- c(231.24, 224.95, 235.42, 226.27, 229.26)
samsung > apple

samsung > 230


# Testing both conditions hold
(samsung > 220) & (samsung < 230)

# Testing only one condtion holds
(samsung < 227) | (samsung > 230)

# Negate False
!FALSE

# Negate a condition
!(samsung < 228)

# If statement
IBM <- 120
if (IBM > 110) {
  print ("IBM is greater than 110")
}

# If ... else statement
IBM <- 120
if (IBM < 110) {
  print ("IBM is less than 110")
} else {
  print ("IBM is greater than 110")
}

# If ... else ladder
IBM <- 120
if (IBM < 100) {
  print ("Buy!")
} else if (IBM >= 100 & IBM < 110) {
  print ("Keep watching!")
} else {
  print ("Sell!")
}


# Nested if statement
IBM <- 120
IBMshares <- 50
if (IBM < 100) {
  print ("Buy!")
} else if (IBM >= 100 & IBM < 110) {
  print ("Keep watching!")
} else {
  if (IBMshares >= 50) {
    print ("Sell!")
  } else {
    print ("You do not have enough shares to sell.")
  }
}

# ifelse function
IBM <- c(110.24, 109.95, 99.42, 111.27, 98.26)
ifelse (IBM < 100, yes = "Buy!", no = "Keep watching!")


# repeat loop
IBM <- 120
repeat {
  print (IBM)
  IBM = IBM + 1
  if (IBM == 130 %% 2) {
    break
  }
}


# repeat loop: checking condition first
n <- 10

repeat {
  if (n == 24) {
    break
  }
  print (n)
   n = n %% 
}


# while loop
shares <- 1000
while (shares > 0) {
  shares <- shares - 200
  print (paste("Shares remaining:", shares))
}


# Initial setting for visualization
shares <- 1000      # initial shares
i <- 0              # x axis counter
x_axis <- i         # x axis
y_axis <- shares    # y axis
plot (x_axis, y_axis, xlim = c(0, 5), ylim = c(0, 1000))    # initial plot


# while loop for visualization
while (shares > 0) {
  shares <- shares - 200
  i <- i + 1
  x_axis <- c(x_axis, i)
  y_axis <- c(y_axis, shares)
  plot (x_axis, y_axis, xlim = c(0, 5), ylim = c(0, 1000))
}


# Count the number of even numbers in a vector
x <- c(1, 2, 3, 6, 8, 9, 12, 15, 18, 20)
count <- 0
for (val in x) {
  if (val %% 2 == 0) {
    count = count + 1
  }
}
print(count)
