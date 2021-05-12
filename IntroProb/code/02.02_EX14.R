# 02.02 - Exercise 14 - Polynomial roots
NSIMS = 100000
B = runif(NSIMS, min=-1, max=1)
C = runif(NSIMS, min=-1, max=1)

sum(C < B**2/4)/NSIMS
13/24

ind = C < B**2/4
plot(B[!ind], C[!ind], pch=16, col="white", xlim=c(-1, 1), ylim=c(-1, 1),
     main="(a)", xlab="B", ylab="C")
points(B[ind], C[ind], pch=16, col="lightgray")


sum(C <= B**2/4 & C >= 0 & B <= 0)/NSIMS
1/48

ind = C <= B**2/4 & C >= 0 & B <= 0
plot(B[!ind], C[!ind], pch=16, col="white", xlim=c(-1, 1), ylim=c(-1, 1),
     main="(b)", xlab="B", ylab="C")
points(B[ind], C[ind], pch=16, col="lightgray")

png(filename = "~/GITHUB/CoveredInChocolate.github.io/IntroProb/img/02.02_Ex14_COMP.png",
    width = 800, height=400)
par(mfrow=c(1,2))

ind = C < B**2/4
plot(B[!ind], C[!ind], pch=16, col="white", xlim=c(-1, 1), ylim=c(-1, 1),
     main="(a)", xlab="B", ylab="C")
points(B[ind], C[ind], pch=16, col="lightgray")
abline(h = 0)
abline(v = 0)

ind = C <= B**2/4 & C >= 0 & B <= 0
plot(B[!ind], C[!ind], pch=16, col="white", xlim=c(-1, 1), ylim=c(-1, 1),
     main="(b)", xlab="B", ylab="C")
points(B[ind], C[ind], pch=16, col="lightgray")
abline(h = 0)
abline(v = 0)
dev.off()