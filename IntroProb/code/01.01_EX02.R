# 01.01 - Exercise 2
coinToss <- function(nToss) {
  # 1 symbolizes coin toss 'H'
  tosses = sample(c(0,1), size=nToss, replace = TRUE)
  return(tosses)
}

# Select n
NSIM = 120
# Storing results
propVector = rep(0, 100)

# Repeat experiment 100 times:
for (k in 1:100) {
  tosses = coinToss(NSIM)
  propVector[k] = mean(tosses) 
} 

print(sum(propVector > 0.4 & propVector < 0.6)/length(propVector))