# 01.01 - Exercise 17c - Random Walk in 3D

RandomWalk3D <- function() {
  NSTEPS = 100000
  walkDirectionX = sample(c(-1, 1), size = NSTEPS, replace = TRUE)
  walkDirectionY = sample(c(-1, 1), size = NSTEPS, replace = TRUE)
  walkDirectionZ = sample(c(-1, 1), size = NSTEPS, replace = TRUE)
  backX = cumsum(walkDirectionX)
  backY = cumsum(walkDirectionY)
  backZ = cumsum(walkDirectionZ)
  # Did simulation not return?
  returned = FALSE
  k = 0
  while (k < NSTEPS & returned == FALSE)  {
    k = k + 1
    if (backX[k] == 0 & backY[k] == 0 & backZ[k] == 0) {
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
  if (i %% 100 == 0) print(i)
  walkRes[i]= RandomWalk3D()
}
# Average return time
mean(walkRes[walkRes > -1])
# Number of infinite spirals
sum(walkRes == -1)