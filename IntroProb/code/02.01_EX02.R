# 02.01 - Exercise 2 - Spinner II

# Simply simulate values between [0, 1].
# 1/3, 1/4, 1/5, 1/6, and 1/20
NSIM = 10000
simVals = runif(NSIM)

# Arc1:
A1 = sum(simVals < 1/3)/NSIM
# Arc2:
A2 = sum(simVals > 1/3 & simVals < (1/3 + 1/4))/NSIM
# Arc3:
A3 = sum(simVals > (1/3 + 1/4) & simVals < (1/3 + 1/4 + 1/5))/NSIM
# Arc4:
A4 = sum(simVals > (1/3 + 1/4 + 1/5) & simVals < (1/3 + 1/4 + 1/5 + 1/6))/NSIM
# Arc5:
A5 = sum(simVals > (1/3 + 1/4 + 1/5 + 1/6))/NSIM

A1;A2;A3;A4;A5

# create dummy data
df <- data.frame(
  name=c("A1", "A2", "A3", "A4", "A5"),
  value=c(A1, A2, A3, A4, A5),
  area = c(3*A1, 4*A2, 5*A3, 6*A4, 20*A5)
)

# Control width:
barplot(height=df$area, names=df$name, col=rgb(0.2,0.4,0.6,0.6), width=c(1/3,1/4,1/5,1/6,1/20),
        main="Adjusted bar plot")

png(filename = "~/GITHUB/CoveredInChocolate.github.io/IntroProb/img/02.01_Ex02.png",
    width = 640, height=480)
barplot(height=df$area, names=df$name, col=rgb(0.2,0.4,0.6,0.6), width=c(1/3,1/4,1/5,1/6,1/20),
        main="Adjusted bar plot")
dev.off()
