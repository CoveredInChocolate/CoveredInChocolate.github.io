# 01.01 - Exercise 1
cointToss <- function(nToss) {
  # 1 symbolizes coin toss 'H'
  tosses = sample(c(0,1), size=nToss, replace = TRUE)
  return(tosses)
}

PropHeads <- function(tosses) {
  propHeads = cumsum(tosses)
  numberOfHundreds = floor(length(tosses)/100)
  retVal = rep(0, numberOfHundreds)
  
  for (k in 1:numberOfHundreds) {
    print(propHeads[100*k]/length(tosses) - 0.5)
    retVal[k] = propHeads[100*k]/length(tosses) - 0.5
  } 
  return(retVal)
} 
PropHeadsByTosses <- function(tosses) {
  propHeads = cumsum(tosses)
  numberOfHundreds = floor(length(tosses)/100)
  retVal = rep(0, numberOfHundreds)
  
  for (k in 1:numberOfHundreds) {
    print(propHeads[100*k]/(100*k) - 0.5)
    retVal[k] = propHeads[100*k]/(100*k) - 0.5
  } 
  return(retVal)
} 

# Simulating 100K tosses
numbeOfTosses = 100*1000
simulatedTosses = cointToss(numbeOfTosses)
t1 = PropHeads(simulatedTosses)
t2 = PropHeadsByTosses(simulatedTosses)

# Generate Plots
plot(1:length(t1), t1, type="l",
     main="Heads by Total number of Tosses",
     xlab="100 tosses", ylab="H - 0.5")

plot(1:length(t2), t2, type="l",
     main="Heads by Number of Tosses",
     xlab="100 tosses", ylab="H - 0.5")


# Save tosses
png(filename="~/GITHUB/CoveredInChocolate.github.io/IntroProb/img/01.01_Ex01_01.png", width = 600, height = 480)
plot(1:length(t1), t1, type="l",
     main="Heads by Total number of Tosses",
     xlab="100 tosses", ylab="H - 0.5")
dev.off()
png(filename="~/GITHUB/CoveredInChocolate.github.io/IntroProb/img/01.01_Ex01_02.png", width = 600, height = 480)
plot(1:length(t2), t2, type="l",
     main="Heads by Number of Tosses",
     xlab="100 tosses", ylab="H - 0.5")
dev.off()



