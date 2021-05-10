# 02.01 - Exercise 8 - Buffon's Needle Simulation - Long needle version

simLongNeedle <- function(NSIMS) {
  L = 100
  theta = runif(NSIMS, min = 0, max = pi/2)
  
  a = mean(L*sin(theta) + L*cos(theta))
  piapprox = (4*L)/a
  return(piapprox)
}
simLongNeedle(100)
simLongNeedle(1000)
simLongNeedle(10000)
simLongNeedle(100000)
simLongNeedle(1000000)
