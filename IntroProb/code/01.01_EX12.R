# 01.01 - Exercise 12 - Election Pollsters

simulateThousandVoters <- function(probD, probR, numberAsked) {
  res = sample(c(0,1), size=numberAsked, replace=TRUE, prob=c(probR, probD))
  return(mean(res))
} 

# Experiment 1 - 0.48 vs 0.52 with 1000
exp1 = rep(0, 100)
for (k in 1:100) {
  exp1[k] = simulateThousandVoters(0.52, 0.48, 1000)
}
# Experiment 2 - 0.49 vs 0.51 with 1000
exp2 = rep(0, 100)
for (k in 1:100) {
  exp2[k] = simulateThousandVoters(0.51, 0.49, 1000)
}
# Experiment 1 - 0.49 vs 0.51 with 3000
exp3 = rep(0, 100)
for (k in 1:100) {
  exp3[k] = simulateThousandVoters(0.51, 0.49, 3000)
}

# Correct Values
sum(exp1 > 0.5)/length(exp1)
sum(exp2 > 0.5)/length(exp2)
sum(exp3 > 0.5)/length(exp3)
