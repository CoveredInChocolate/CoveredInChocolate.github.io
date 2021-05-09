# 01.01 - Exercise 9 - Roulette III (Labouchere)

numberList = c(1, 2, 3, 4)

# Labouchere bet
getLabNumber <- function(pl) {
  retval = 0
  # If only one value, return it
  # Else add the first and last of the ProvidedList
  if (length(pl) == 1) {
    retval = pl[1] 
  } else {
    retval = pl[1] + pl[length(pl)]
  } 
  return(retval)
}

# Roulette
winnings = 0
minWinnings = 0
playing = TRUE
while(playing) {
  roulette = sample(1:38, size = 1, replace = TRUE)
  betValue = getLabNumber(numberList)
  if (roulette <= 18) {
    # Win!
    winnings = winnings + betValue
    if(length(numberList) > 2) {
      numberList = numberList[2:(length(numberList)-1)] 
    } else if(length(numberList) == 2) {
        numberList = c() 
    } else {
      numberList = c()
    } 
  } else {
    # Loss - black or green
    winnings = winnings - betValue
    numberList = c(numberList, betValue)
  }
  games = games + 1
  # Ending game
  if (length(numberList) == 0) playing = FALSE
  
  # Logging minimal value
  if(winnings < minWinnings) minWinnings <- winnings
  
  # Printing some results
  print("-----------------------")
  cat(paste0("Betting value          : ", betValue, "\n"))
  cat(paste0("Outcome (<= 18 is win) : ", roulette, "\n"))
  cat("Remainging list        : ")
  print(cat(numberList))
} 
winnings
minWinnings

