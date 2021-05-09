# 01.01 - Exercise 13 - Babies and Hospitals
hospLargeOver60 = 0
hospSmallOver60 = 0

for (d in 1:365) {
  # Large hospital births - 1 is boy
  hl = sample(c(0, 1), size = 45, replace = TRUE)
  if (mean(hl) >= 0.6) {
    hospLargeOver60 = hospLargeOver60 + 1
  } 
  # Small hospital births - 1 is boy
  hs = sample(c(0, 1), size = 15, replace = TRUE)
  if (mean(hs) >= 0.6) {
    hospSmallOver60 = hospSmallOver60 + 1
  } 
} 
# Print results
hospLargeOver60
hospSmallOver60