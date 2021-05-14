# 03.02 - Exercise 14 - Stirling approximation

# Binomial Distribution
b <- function(n, p, k) {
  q = 1 - p
  prob = choose(n, k)*p**k*q**(n-k)
  return(prob)
}

n = 10
b(2*n, 0.5, n)
1/sqrt(pi*n)

n = 25
b(2*n, 0.5, n)
1/sqrt(pi*n)

n = 50
b(2*n, 0.5, n)
1/sqrt(pi*n)