# 01.01 - Exercise 3
NSIM = 1e6

# Simulating three dice tosses
d1 = sample(c(1:6), size=NSIM, replace = TRUE)
d2 = sample(c(1:6), size=NSIM, replace = TRUE)
d3 = sample(c(1:6), size=NSIM, replace = TRUE)

# Sum of tosses
sumDice = d1 + d2 + d3

# Number of 9s
sum(sumDice == 9)/NSIM

# Number of 10s
sum(sumDice == 10)/NSIM
