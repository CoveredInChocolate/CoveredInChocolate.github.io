# 02.01 - Exercise 7 - Buffon's Needle Simulation - Laplace version

simLaplace <- function(NSIMS) {
  L = 1
  d1 = runif(NSIMS, min = 0, max = L/2)
  d2 = runif(NSIMS, min = 0, max = L/2)
  theta = runif(NSIMS, min = 0, max = pi/2)
  
  a = sum(d1 < 0.5*sin(theta) | d2 < 0.5*cos(theta))/NSIMS
  piapprox = (4*L - L^2)/a
  return(piapprox)
}
simLaplace(100)
simLaplace(1000)
simLaplace(10000)
simLaplace(100000)
simLaplace(1000000)
