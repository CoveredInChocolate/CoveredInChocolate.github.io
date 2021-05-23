# 04.01 - Exercise 34 - Women and Hats

permutations <- function(n){
  if(n==1){
    return(matrix(1))
  } else {
    sp <- permutations(n-1)
    p <- nrow(sp)
    A <- matrix(nrow=n*p,ncol=n)
    for(i in 1:n){
      A[(i-1)*p+1:p,] <- cbind(i,sp+(sp>=i))
    }
    return(A)
  }
}

outcomes = matrix(LETTERS[permutations(4)],ncol=4)


# Output
for(row in 1:12) {
  cat(outcomes[row,1:4]," | ", outcomes[row+12,1:4] ,"\n")
}


# Check outcomes where e.g. A and C are correct
for(row in 1:24) {
  if (outcomes[row, 1] == "A" & outcomes[row, 3] == "C") {
    cat(outcomes[row,1:4],"\n")
  }
}
