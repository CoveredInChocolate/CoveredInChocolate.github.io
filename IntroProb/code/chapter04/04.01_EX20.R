# 04.01 - Exercise 20 - Simulating the Polya Urn

NDRAWS = 1000

# 1 is white, 0 is black
urn = c(1, 0)

for(k in 1:NDRAWS) {
  draw = sample(urn, size = 1)
  urn = c(urn, draw)
}

mean(urn)
