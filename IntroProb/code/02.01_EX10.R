# 02.01 - Exercise 10 - Triangle

simTriangle <- function(NSIMS) {
  x = runif(NSIMS)
  y = runif(NSIMS)
  
  ind = x + y < 1
  return(x[ind])
} 

xval = simTriangle(10000)
xcut = cut(xval, c(0,1:10/10)) 

df = data.frame(
  xcat = xcut,
  cnt = 1
)

df2 = aggregate(df$cnt, by=list(df$xcat), FUN = sum)
names(df2) = c("Interval", "Freq")

barplot(height=df2$Freq/500, names=df2$Interval , col=rgb(0.2,0.4,0.6,0.6), width=1,
        main="Frequency per Subinterval")
plotx = 1:120/10
lines(plotx, 2 - (1/6)*plotx, col="red", lwd=2)

png(filename = "~/GITHUB/CoveredInChocolate.github.io/IntroProb/img/02.01_Ex10.png",
    width = 640, height=480)
barplot(height=df2$Freq/500, names=df2$Interval , col=rgb(0.2,0.4,0.6,0.6), width=1,
        main="Frequency per Subinterval")
plotx = 1:120/10
lines(plotx, 2 - (1/6)*plotx, col="red", lwd=2)
dev.off()
