# 02.01 - Exercise 5 - Estimating ln(2)

NVALS = 10000
vlsX = runif(NVALS)
vlsY = runif(NVALS)

hit = 0
hitCoords = c()
for (k in 1:NVALS) {
  if (vlsY[k] <= 1/(vlsX[k] + 1)) {
    hit = hit + 1
    hitCoords = c(hitCoords, k)
  }
}
hit
length(hitCoords)

xLog = vlsX[hitCoords]
yLog = vlsY[hitCoords]
xOut = vlsX[-hitCoords]
yOut = vlsY[-hitCoords]

plot(xLog, yLog, col="red", pch=16, cex=0.8)
points(xOut, yOut, pch=16, cex=0.8)

png(filename = "~/GITHUB/CoveredInChocolate.github.io/IntroProb/img/02.01_Ex05.png",
    width=400, height=400)
plot(xLog, yLog, col="red", pch=16, cex=0.8)
points(xOut, yOut, pch=16, cex=0.8)
dev.off()

# log(2)
hit/NVALS
log(2)
(hit/NVALS)/log(2)
