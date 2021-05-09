# 01.01 - Exercise 16 - Boys and Girls

findBoy <- function(childList) {
  numChildren = min(which(childList == "B"))
  return(numChildren)
} 
findBoyAndGirl <- function(childList) {
  numChildren1 = min(which(childList == "B"))
  numChildren2 = min(which(childList == "G"))
  numChildren = max(numChildren1, numChildren2)
  return(numChildren)
} 

FAMS = 100000
numChildrenBoys = rep(0, FAMS)
numChildrenBoth = rep(0, FAMS)

for (f in 1:FAMS) {
  children = sample(c("B", "G"), size=20, replace = TRUE)
  numChildrenBoys[f] = findBoy(children)
  numChildrenBoth[f] = findBoyAndGirl(children)
}
sum(numChildrenBoys)
sum(numChildrenBoth)
sum(numChildrenBoth)/sum(numChildrenBoys)
