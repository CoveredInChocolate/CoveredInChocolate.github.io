# 01.01 - Exercise 11 - Heads or Tails
NUMCOINTOSS = 40

RunGame <- function() {
  coinTosses = sample(c("H", "T"), size = NUMCOINTOSS, replace = TRUE)
  return(coinTosses)
}

CalculateScore <- function(gameRes){
  # H: Peter gets a penny
  # T: Paul gets a penny
  stateWinnings = rep(0, length(gameRes))
  for (k in 1:length(gameRes)) {
    if (gameRes[k] == "H") {
      stateWinnings[k] = 1
    } else {
      stateWinnings[k] = -1
    } 
  }
  totWins = sum(stateWinnings)
  return(totWins)
}

NGAMES = 10000
propGames = rep(0, NGAMES)
gameProp = rep(0, 20)
for (g in 1:NGAMES) {
  coinRes = RunGame()
  oneGame = CalculateScore(coinRes)
  propGames[g]= oneGame
}
for (v in seq(2, 40, 2)) {
  print("------------")
  print(paste0("Total win: ", v))
  print(sum(propGames == v)/length(propGames))
}
