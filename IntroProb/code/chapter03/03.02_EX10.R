# 03.02 - Exercise 10 - Test Guessing

# Binomial Distribution
b <- function(n, p, k) {
  q = 1 - p
  prob = choose(n, k)*p**k*q**(n-k)
  return(prob)
}

# Test: 7 to 10
probT1 = 0
minQst = 7
totQst = 10
for (correct in minQst:totQst) {
  probT1 = probT1 + b(totQst, 0.5, correct)
}

# Test: 21 to 30
probT2 = 0
minQst = 21
totQst = 30
for (correct in minQst:totQst) {
  probT2 = probT2 + b(totQst, 0.5, correct)
}

# Test: 35 to 50
probT3 = 0
minQst = 35
totQst = 50
for (correct in minQst:totQst) {
  probT3 = probT3 + b(totQst, 0.5, correct)
}

probT1
probT2
probT3
