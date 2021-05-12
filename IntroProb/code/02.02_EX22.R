# 02.02 - Exercise 22 - Coin Histogram
NSIMS = 1000
numHeads = rep(0, NSIMS)

for(n in 1:NSIMS) {
  toss = sample(c(1,0), size = 100, replace = TRUE)
  numHeads[n] = sum(toss)
}
hist(numHeads)

png(filename = "~/GITHUB/CoveredInChocolate.github.io/IntroProb/img/02.01_Ex22.png",
    width = 640, height=480)
hist(numHeads)
dev.off()