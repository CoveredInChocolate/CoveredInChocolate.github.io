# 02.02 - Exercise 10 - Uniformly distributed waiting times
NSIMS = 100000
wtList = rep(0, NSIMS)

for(k in 1:NSIMS) {
  wt = cumsum(runif(25, min=5, max=15)) - 100
  # Finding smallest positive value
  IND = min(which(wt > 0))
  # This is the shortest waiting time at time 100
  # Ex.
  # c(90, 92, 105) - 100  ==>  c(-10, -8, 5) ==> 5
  wtList[k] = wt[IND]
}
mean(wtList)