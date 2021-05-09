# 01.01 - Exercise 10 - Martingale Doubling System

# Roulette
NGAMES = 1000
ALLGAMES = rep(0, NGAMES)
for (g in 1:NGAMES) {
  winnings = 0
  minWinnings = 0
  playing = TRUE
  betValue = 1
  while(playing) {
    roulette = sample(1:38, size = 1, replace = TRUE)
    if (roulette <= 18) {
      # Win!
      winnings = winnings + betValue
      betValue = 1
    } else {
      # Loss - black or green
      winnings = winnings - betValue
      betValue = 2*betValue
    }
    # Ending game
    if (winnings >= 5) playing = FALSE
    if (winnings <= -100) playing = FALSE
    
    # Logging minimal value
    if(winnings < minWinnings) minWinnings <- winnings
  } 
  ALLGAMES[g] = winnings
} 
mean(ALLGAMES)
