# 03.01 - Exercise 18 - Birthday coincidences
N = 5

CalcProb <- function(n) {
  numerator = prod(365:(365-n+1))
  denominator = 365**n
  return(1 - numerator/denominator)
}

NSIMS = 100000
coincidences = rep(1, NSIMS)
for(k in 1:NSIMS) {
  # Simulate N birthdays
  bd = sample(1:365, size=N, replace=TRUE)
  # If length of unique values equals N: they are distinct
  if (length(unique(bd)) == N) {
    coincidences[k] = 0
  }
}
mean(coincidences)
CalcProb(N)
