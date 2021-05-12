# 02.02 - Exercise 23 - Negative Log
NSIMS = 1000000
xval = runif(NSIMS)
yhst = -log(xval)

xplot = sort(runif(1000, min=0, max=6))
yval = exp(-xplot)

hist(yhst, breaks=200, probability = TRUE,
     xlim=c(0,6))
lines(sort(xplot), yval, type="l", col="red",
      lwd=2)

png(filename = "~/GITHUB/CoveredInChocolate.github.io/IntroProb/img/02.01_Ex23.png",
    width = 640, height=480)
hist(yhst, breaks=200, probability = TRUE,
     xlim=c(0,6))
lines(sort(xplot), yval, type="l", col="red",
      lwd=2)
dev.off()
