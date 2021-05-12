# 02.02 - Exercise 11 - Custom waiting times
NSIMS = 10000
wtList = rep(0, NSIMS)

# Mean waiting time
mnwt = sample(c(3, 73), size=10000, replace=TRUE, prob=c(0.9, 0.1))
mean(mnwt)

for(k in 1:NSIMS) {
  wt = sample(c(3, 73), size=50, replace=TRUE, prob=c(0.9, 0.1))
  wt = cumsum(wt) - 100
  # Finding smallest positive value
  IND = min(which(wt > 0))
  wtList[k] = wt[IND]
}
mean(wtList)
