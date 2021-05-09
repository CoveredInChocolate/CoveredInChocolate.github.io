# 01.01 - Exercise 5

NREP = 100000
NSIM = 200

firstOccurrence = rep(0, NREP)

for (i in 1:NREP) {
  # Simulating three dice tosses
  d1 = sample(c(1:6), size=NSIM, replace = TRUE)
  d2 = sample(c(1:6), size=NSIM, replace = TRUE)
  d3 = sample(c(1:6), size=NSIM, replace = TRUE)
  
  # Sum of tosses
  sumDice = d1 + d2 + d3
  
  # Value which ensures victory in majority of cases
  if (sum(sumDice == 18) > 0) {
    firstTripleSix = min(which(sumDice == 18))
  } else {
    firstTripleSix = NSIM
  } 
  firstOccurrence[i] = firstTripleSix
} 

print(sum(firstOccurrence > 150)/NREP)
