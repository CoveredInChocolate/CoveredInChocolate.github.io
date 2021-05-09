# 01.01 - Exercise 17a - Random Walk

RandomWalk1D <- function() {
  walkDirection = sample(c(-1, 1), size = 10000, replace = TRUE)
  back = cumsum(walkDirection)
  # print(min(which(back == 0)))
  if (sum(back == 0) == 0) {
    return(-1)
  } else {
    return(min(which(back == 0)))
  } 
}

NWALKS = 1000
walkRes = rep(0, NWALKS)
for (i in 1:NWALKS) {
  walkRes[i]= RandomWalk1D()
}
# Average return time
mean(walkRes[walkRes > -1])
# Number of infinite spirals
sum(walkRes == -1)
