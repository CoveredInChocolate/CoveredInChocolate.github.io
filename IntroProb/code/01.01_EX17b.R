# 01.01 - Exercise 17b - Random Walk in 2D
# Run time: roughly 50 minutes...

RandomWalk2D <- function() {
  NSTEPS = 100000
  walkDirectionX = sample(c(-1, 1), size = NSTEPS, replace = TRUE)
  walkDirectionY = sample(c(-1, 1), size = NSTEPS, replace = TRUE)
  backX = cumsum(walkDirectionX)
  backY = cumsum(walkDirectionY)
  # Did simulation not return?
  returned = FALSE
  k = 0
  while (k < NSTEPS & returned == FALSE)  {
    k = k + 1
    if (backX == 0 & backY == 0) {
      returned = TRUE
    }
  }
  if(returned) {
    return(k)
  } else {
    return(-1)
  } 
}

NWALKS = 1000
walkRes = rep(0, NWALKS)
for (i in 1:NWALKS) {
  walkRes[i]= RandomWalk2D()
}
# Average return time
mean(walkRes[walkRes > -1])
# Number of infinite spirals
sum(walkRes == -1)
Sys.time()
# Started around 23:34 or so