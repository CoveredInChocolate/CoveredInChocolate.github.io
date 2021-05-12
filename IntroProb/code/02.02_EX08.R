# 02.02 - Exercise 8 - Simulations to verify calculations

NSIMS = 100000

B = runif(NSIMS)
C = runif(NSIMS)

#### (a)
sum(B + C < 0.5)/NSIMS
1/8

#### (b)
sum(B*C < 0.5)/NSIMS
0.5 + log(2)/2

#### (c)
sum(abs(B - C) < 0.5)/NSIMS
6/8

#### (d)
sum(pmax(B, C) < 0.5)/NSIMS
1/4

#### (e)
sum(pmin(B, C) < 0.5)/NSIMS
3/4

#### (f)
sum(B < 0.5 & 1 - C < 0.5)/NSIMS
1/4

#### (g)
sum((B < 0.5 & 1 - C < 0.5) & (abs(B - C) < 0.5))/NSIMS
1/8

#### (h)
sum(B**2 + C**2 < 0.5)/NSIMS
pi*(1/sqrt(2))**2/4

#### (i)
sum((B-0.5)**2 + (C-0.5)**2 < 0.25)/NSIMS
pi*(1/2)**2


# Compile plots
B = runif(NSIMS)
C = runif(NSIMS)

png(filename = "~/GITHUB/CoveredInChocolate.github.io/IntroProb/img/02.02_Ex8_COMP.png",
    width = 820, height=650)
par(mfrow=c(3,3))

# (a)
ind = B + C < 0.5
plot(B[!ind], C[!ind], pch=16, col="white", xlim=c(0, 1), ylim=c(0, 1),
     main="(a)", xlab="B", ylab="C")
points(B[ind], C[ind], pch=16, col="lightgray")

# (b)
ind = B*C < 0.5
plot(B[!ind], C[!ind], pch=16, col="white", xlim=c(0, 1), ylim=c(0, 1),
     main="(b)", xlab="B", ylab="C")
points(B[ind], C[ind], pch=16, col="lightgray")

# (c)
ind = abs(B - C) < 0.5
plot(B[!ind], C[!ind], pch=16, col="white", xlim=c(0, 1), ylim=c(0, 1),
     main="(c)", xlab="B", ylab="C")
points(B[ind], C[ind], pch=16, col="lightgray")

# (d)
ind = pmax(B, C) < 0.5
plot(B[!ind], C[!ind], pch=16, col="white", xlim=c(0, 1), ylim=c(0, 1),
     main="(d)", xlab="B", ylab="C")
points(B[ind], C[ind], pch=16, col="lightgray")

# (e)
ind = pmin(B, C) < 0.5
plot(B[!ind], C[!ind], pch=16, col="white", xlim=c(0, 1), ylim=c(0, 1),
     main="(e)", xlab="B", ylab="C")
points(B[ind], C[ind], pch=16, col="lightgray")

# (f)
ind = B < 0.5 & 1 - C < 0.5
plot(B[!ind], C[!ind], pch=16, col="white", xlim=c(0, 1), ylim=c(0, 1),
     main="(f)", xlab="B", ylab="C")
points(B[ind], C[ind], pch=16, col="lightgray")

# (g)
ind = (B < 0.5 & 1 - C < 0.5) & (abs(B - C) < 0.5)
plot(B[!ind], C[!ind], pch=16, col="white", xlim=c(0, 1), ylim=c(0, 1),
     main="(g)", xlab="B", ylab="C")
points(B[ind], C[ind], pch=16, col="lightgray")

# (h)
ind = B**2 + C**2 < 0.5
plot(B[!ind], C[!ind], pch=16, col="white", xlim=c(0, 1), ylim=c(0, 1),
     main="(h)", xlab="B", ylab="C")
points(B[ind], C[ind], pch=16, col="lightgray")

# (i)
ind = (B-0.5)**2 + (C-0.5)**2 < 0.25
plot(B[!ind], C[!ind], pch=16, col="white", xlim=c(0, 1), ylim=c(0, 1),
     main="(i)", xlab="B", ylab="C")
points(B[ind], C[ind], pch=16, col="lightgray")
dev.off()
