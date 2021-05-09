# 01.01 - Exercise 4 - Raquetball

winPoint = 0.4
winBackServe = 0.5

NGAMES = 100000
# Initializing vector of results
# 1: Player wins
# 0: Opponent wins
# -1: Default, empty value
resultsVector = rep(-1, NGAMES)

# Simulate game
simulateGame <- function(seededVals) {
  pPoints = 0
  oPoints = 0
  serve = "p"
  winner= -1
  for (k in 1:length(seededVals)) {
    if (serve == "p" & seededVals[k] >= winPoint) {
      # Player wins point
      pPoints = pPoints + 1
    } else if (serve == "p" & seededVals[k] < winPoint) {
      # Player loses serve
      serve = "o" 
    } else if (serve == "o" & seededVals[k] >= winBackServe) {
      # Opponent wins point
      oPoints = oPoints + 1
    } else if (serve == "o" & seededVals[k] < winBackServe) {
      # Opponent loses serve
      serve = "p" 
    }
    if (pPoints == 21 | oPoints == 21) {
      # Game finished - break for loop
      # print("BREAK!")
      # print(k)
      break
    } 
  }
  if (pPoints == 21) winner = 1
  if (oPoints == 21) winner = 0
  return(winner)
} 

# More efficient to vectorize, but code is easier to understand this way
for (g in 1:NGAMES) {
  # Simulating 200 random uniform variables
  simSeed = runif(200)
  resultsVector[g] =  simulateGame(simSeed)
} 

WINRATE = sum(resultsVector)/length(resultsVector)
print(WINRATE)
