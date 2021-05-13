# 03.01 - Exercise 9 - Polynomial roots
lowEst <- function(n) {
  return(sqrt(2*pi*n)*(n/exp(1))**n*exp(1/(12*n + 1)))
}
highEst <- function(n) {
  return(sqrt(2*pi*n)*(n/exp(1))**n*exp(1/(12*n)))
}

printVals <- function() {
  cat(sprintf("%3s", "n"))
  cat(sprintf("%12s", "LOW"))
  cat(sprintf("%12s", "FAC"))
  cat(sprintf("%12s", "HIGH\n"))
  cat("-----------------------------------------\n")
  for(n in 1:9) {
    cat(sprintf("%3d",n))
    cat(sprintf("%12.2f", lowEst(n)))
    cat(sprintf("%12d", factorial(n)))
    cat(sprintf("%12.2f\n", highEst(n)))
  }
}
printVals()