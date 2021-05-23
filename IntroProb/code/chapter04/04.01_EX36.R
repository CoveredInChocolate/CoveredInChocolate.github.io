# 04.01 - Exercise 36 - Minimal of dice toss

# Original dice toss
for(k in 1:6) {
  for(m in 1:6) {
    cat(sprintf("(%d,%d) ", k, m))
  }
  cat("\n")
}
cat("\n\n")

# Minimal dice toss
for(k in 1:6) {
  for(m in 1:6) {
    minVal = min(k, m)
    cat(sprintf("(%d) ",minVal))
  }
  cat("\n")
}