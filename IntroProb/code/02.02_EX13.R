# 02.02 - Exercise 13 - Breaking a stick
NSIMS = 100000

# First cut
C = runif(NSIMS)
triangles = rep(0, NSIMS)

# Second cut smaller, which is larger 1/2
for (k in 1:NSIMS) {
  lnC = max(C[k], 1 - C[k])
  # Second break
  B = runif(1, min = 0, max = lnC)
  lnB = max(B, lnC - B)
  if(lnB < 1/2) {
    # Triangle
    triangles[k] = 1
  } else {
    # Can't make a triangle; one piece is larger than 0.5
    triangles[k] = 0
  }
}
sum(triangles)/NSIMS


# Single case
Ct = runif(1)
lnC = max(Ct, 1 - Ct)
lnC
Bt = runif(1, min=0, max=lnC)
lnB = max(Bt, lnC - Bt)
lnB
