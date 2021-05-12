# 02.02 - Exercise 19 - Simulating Exercise 7
NSIMS = 10000
B = runif(NSIMS)

sum(1/3 < B & B < 2/3)/NSIMS
1/3 # Ex 7.

sum(abs(B - 1/2) <= 1/4)/NSIMS
1/2 # Ex 7.

sum(B < 1/4 | 1 - B < 1/4)/NSIMS
1/2 # Ex 7.

sum(3*B**2 < B)/NSIMS
1/3 # Ex 7.

