# 02.01 - Exercise 6 - Buffon's Needle Simulation

simBuffon <- function(NSIMS) {
  d = runif(NSIMS, min = 0, max = 0.5)
  theta = runif(NSIMS, min = 0, max = pi/2)
  
  a = sum(d < 0.5*sin(theta))/NSIMS
  piapprox = 2/a
  return(piapprox)
}
simBuffon(100)
simBuffon(1000)
simBuffon(10000)
simBuffon(100000)
simBuffon(1000000)
