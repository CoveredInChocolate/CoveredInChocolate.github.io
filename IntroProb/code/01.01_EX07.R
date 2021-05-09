# 01.01 - Exercise 7 - Roulette II

# Simulate 1000 different situations, where a player bets
# on red 1000 times.
NGAMES = 500

# 37 is "0"
# 38 is "00"
# 1-18 is RED
# 19-36 is BLACK

winnings = rep(0, NGAMES)
winnings17 = rep(0, NGAMES)
# Roulette
roulette = sample(1:38, size = NGAMES, replace = TRUE)
for (g in 1:NGAMES) {
  if (roulette[g] <= 18) {
    # Win!
    winnings[g] = 1
  } else {
    # Loss - black or green
    winnings[g] = - 1
  }
  if (roulette[g] == 17) {
    winnings17[g] = 36
  } else {
    winnings17[g] = -1
  } 
}

winnings = cumsum(winnings)
winnings17 = cumsum(winnings17)

print(winnings)
print(winnings17)

yMIN = min(winnings, winnings17)
yMAX = max(winnings, winnings17)

plot(1:500, winnings, type="l", col="red", ylim=c(yMIN, yMAX),
     main="Roulette: Strategy RED vs. 17",
     xlab="500 games", ylab="Winnings")
lines(1:500, winnings17, type="l", col="blue")

png(filename="~/GITHUB/CoveredInChocolate.github.io/IntroProb/img/01.01_Ex07.png", width = 600, height = 480)
plot(1:500, winnings, type="l", col="red", ylim=c(yMIN, yMAX),
     main="Roulette: Strategy RED vs. 17",
     xlab="500 games", ylab="Winnings")
lines(1:500, winnings17, type="l", col="blue")
dev.off()
