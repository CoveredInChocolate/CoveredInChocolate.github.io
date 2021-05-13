# 03.02 - Exercise 4 - Binomial Triangle
ntot = 11

pascalsTriangle = matrix(rep(0, ntot**2), ncol=ntot)

for (i in 1:ntot) {
  n = i-1
  if (n > 0) {
    for (j in 1:i) {
      k = j-1
      pascalsTriangle[i, j] = choose(n, k)
    }
  } else {
    # First row
    pascalsTriangle[1, 1] = choose(0, 0)
  }
}

# Nicer output
for (i in 1:ntot) {
  for (j in 1:ntot) {
    if(pascalsTriangle[i, j] != 0) {
      cat(sprintf("%6d", pascalsTriangle[i, j]))
    }
  }
  cat("\n")
}