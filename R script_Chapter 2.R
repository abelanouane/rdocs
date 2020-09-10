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
  if (i %% 2 !== 0) {
    print(n)
  } else if (i == 24) {
    break
  }
}


