# 02.01 - Exercise 4 - Estimating sin(pi*x)

NVALS = 10000
vlsX = runif(NVALS)
vlsY = runif(NVALS)

hit = 0
hitCoords = c()
for (k in 1:NVALS) {
  if (vlsY[k] <= sin(pi*vlsX[k])) {
    hit = hit + 1
    hitCoords = c(hitCoords, k)
  }
}
hit
length(hitCoords)

xSin = vlsX[hitCoords]
ySin = vlsY[hitCoords]
xOut = vlsX[-hitCoords]
yOut = vlsY[-hitCoords]

plot(xSin, ySin, col="red", pch=16, cex=0.8)
points(xOut, yOut, pch=16, cex=0.8)

png(filename = "~/GITHUB/CoveredInChocolate.github.io/IntroProb/img/02.01_Ex04.png",
    width=400, height=400)
plot(xSin, ySin, col="red", pch=16, cex=0.8)
points(xOut, yOut, pch=16, cex=0.8)
dev.off()

# 2/pi
hit/NVALS
2/pi
(hit/NVALS)/(2/pi)

# pi
2/(hit/NVALS)
