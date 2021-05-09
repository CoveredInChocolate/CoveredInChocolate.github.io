# 01.01 - Exercise 14 - Coin Toss Game

NGAMES = 10000
payout = rep(0, NGAMES)

for(g in 1:NGAMES) {
  # Heads is 1
  coinTosses = sample(c(0,1), size = 100, replace = TRUE)
  # First heads
  j = min(which(coinTosses == 1))
  payout[g] = 2*j 
}
mean(payout)
max(payout)
