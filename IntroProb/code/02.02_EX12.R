# 02.02 - Exercise 14 - Breaking a stick II
NSIMS = 10000

B = runif(NSIMS)
C = runif(NSIMS)

CutShort = pmin(B, C)
CutLong = pmax(B, C)

# B[1:5]
# C[1:5]

CutShort[1:5]
CutLong[1:5]


L3 = 1 - CutLong
L2 = CutLong - CutShort
L1 = CutShort

sum(L3 < 1/2 & L2 < 1/2 & L1 < 1/2)/NSIMS