# 02.02 - Exercise 19 - Dartboard simulation
NSIMS = 100000
X = runif(NSIMS, min=-10, max=10)
Y = runif(NSIMS, min=-10, max=10)

# Proportion within 10 from center (19 doesn't make sense)
NPROP = sum(sqrt(X**2 + Y**2) < 10)

# Proportion between 8 and 10 from center
sum(sqrt(X**2 + Y**2) < 10 & sqrt(X**2 + Y**2) > 8)/NPROP
9/25  # Ex. 4

# Proportion within 8 and 10 from center in first quadrant
sum(sqrt(X**2 + Y**2) < 10 & sqrt(X**2 + Y**2) > 8)/(4*NPROP)
9/100  # Ex. 4