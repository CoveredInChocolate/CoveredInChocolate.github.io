# 02.02 - Exercise 9 - Memoryless Exponential Distribution
NSIMS = 10000
wtList = rep(0, NSIMS)

for(k in 1:NSIMS) {
  wt = cumsum(rexp(500, rate=1/10))
  if (wt[1] > 100) {
    IND = 1
  } else {
    IND = max(which(wt < 100))
  }
  wtList[k] = wt[IND+1] - 100
}
mean(wtList)