# 03.01 - Exercise 22 - Counterfeit Watches
NSIMS = 10000
NMAX = 127             # Actual max value
K = 16                 # Sample size
wEst = rep(0, NSIMS)   # Watson estimate
hEst = rep(0, NSIMS)   # Holmes estimate
for (k in 1:NSIMS) {
  smp = sample(1:NMAX, size=16)
  m = max(smp)
  wEst[k] = m
  hEst[k] = 2*m
}
NMAX
mean(wEst)
mean(hEst)