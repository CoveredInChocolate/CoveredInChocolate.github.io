# 02.01 - Exercise 3 - Estimating pi

NVALS = 1000
vlsX = runif(NVALS)
vlsY = runif(NVALS)

# Determine values within circle at (1/2, 1/2) with radius 1/2

hit = 0
hitCoords = c()
for (k in 1:NVALS) {
  if ((vlsX[k]-1/2)^2 + (vlsY[k]-1/2)^2 <= 1/4) {
    hit = hit + 1
    hitCoords = c(hitCoords, k)
  }
}
hit
length(hitCoords)

xCirc = vlsX[hitCoords]
yCirc = vlsY[hitCoords]
xOut = vlsX[-hitCoords]
yOut = vlsY[-hitCoords]

png(filename = "~/GITHUB/CoveredInChocolate.github.io/IntroProb/img/02.01_Ex03.png",
    width=400, height=400)
plot(xCirc, yCirc, col="red", pch=16, cex=0.8)
points(xOut, yOut, pch=16, cex=0.8)
dev.off()

#pi/4
hit/1000
#pi
4*hit/1000