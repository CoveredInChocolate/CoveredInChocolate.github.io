# 02.02 - Exercise 8 - Simulations to verify calculations

NSIMS = 100000

#### (a)
B = runif(NSIMS)
C = runif(NSIMS)
sum(B + C < 0.5)/NSIMS
1/8

#### (b)
B = runif(NSIMS)
C = runif(NSIMS)
sum(B*C < 0.5)/NSIMS
7/8

#### (c)