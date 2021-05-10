# 02.01 - Exercise 1 - Spinner

# Simply simulate values between [0, 1].
NSIM = 1000
simVals = runif(NSIM)

# Arc1:   0 to 1/2
A1 = sum(simVals < 1/2)/NSIM
# Arc2: 1/2 to 5/6
A2 = sum(simVals > 1/2 & simVals < 5/6)/NSIM
# Arc3: 5/6 to 1
A3 = sum(simVals > 5/6)/NSIM

A1;A2;A3

# create dummy data
df <- data.frame(
  name=c("A1", "A2", "A3"),
  value=c(A1, A2, A3),
  area = c(2*A1, 3*A2, 6*A3)
)

# Control width:
barplot(height=df$area, names=df$name, col=rgb(0.2,0.4,0.6,0.6), width=c(1/2,1/3,1/6),
        main="Adjusted bar plot")

png(filename = "~/GITHUB/CoveredInChocolate.github.io/IntroProb/img/02.01_Ex01.png",
    width = 640, height=480)
barplot(height=df$area, names=df$name, col=rgb(0.2,0.4,0.6,0.6), width=c(1/2,1/3,1/6),
        main="Adjusted bar plot")
dev.off()
