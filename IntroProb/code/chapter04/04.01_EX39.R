# 04.01 - Exercise 39 - Z = XY

# Original dice toss
for(k in -1:2) {
  for(m in -1:2) {
    cat(sprintf("(%2d,%2d) ", k, m))
  }
  cat("\n")
}
cat("\n\n")

# Minimal dice toss
for(k in -1:2) {
  for(m in -1:2) {
    newVal = k*m
    cat(sprintf("(%2d) ",newVal))
  }
  cat("\n")
}