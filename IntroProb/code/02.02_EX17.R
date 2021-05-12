# 02.02 - Exercise 17 - Simulating Exercise 1
NSIMS = 10000
X = runif(NSIMS, min=2, max=10)

sum(X > 5)/NSIMS
5/8 # Ex. 1
sum(5 < X & X < 7)/NSIMS
1/4 # Ex. 1
sum(X**2 - 12*X + 35 > 0)/NSIMS
3/4 # Ex. 1
