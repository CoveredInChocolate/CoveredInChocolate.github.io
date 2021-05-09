# 01.01 - Exercise 6 - Roulette

# Simulate 1000 different situations, where a player bets
# on red 1000 times.
NSIM = 10000
NGAMES = 1000

TOTWINS = rep(0, NSIM)

# 37 is "0"
# 38 is "00"
# 1-18 is RED
# 19-36 is BLACK

for (k in 1:NSIM) {
  winnings = 0
  # Roulette
  roulette = sample(1:38, size = NGAMES, replace = TRUE)
  for (g in 1:NGAMES) {
    if (roulette[g] <= 18) {
      # Win!
      winnings = winnings + 1
    } else {
      # Loss - black or green
      winnings = winnings - 1
    }
  }
  TOTWINS[k] = winnings 
}

print(mean(TOTWINS))
