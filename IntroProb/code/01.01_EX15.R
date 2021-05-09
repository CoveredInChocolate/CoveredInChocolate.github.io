# 01.01 - Exercise 15 - Basketball

calcStreak <- function(tosses) {
  mxVal = 0
  crnStreak = 0
  for(i in 1:length(tosses)) {
    if (tosses[i] == 1) {
      crnStreak = crnStreak + 1
      if (crnStreak > mxVal) mxVal = crnStreak
    } else {
      crnStreak = 0
    } 
  }
  return(mxVal)
}

simGame <- function() {
  # 1 is a score
  tosses = sample(c(0,1), size = 20, replace = TRUE)
  return(calcStreak(tosses))
}

# Simulating games
NGAMES = 10000
hotGames = rep(0, NGAMES)
for (g in 1:NGAMES) {
  hotGames[g] = simGame()
}
sum(hotGames >= 5)/length(hotGames)