# # 03.01 - Exercise 11 - Candidate selection
N = 10
candidates = 1:N
NSIMS = 10000
SAME = rep(0, NSIMS)
for(k in 1:NSIMS) {
  c1 = sample(candidates, size=1)
  c2 = sample(candidates, size=1)
  c3 = sample(candidates, size=1)
  if(c1 == c2 & c1 == c3) {
    SAME[k] = 1
  } else if(c1 == c2 & c1 != c3) {
    SAME[k] = 1
  } else if(c1 != c2 & c1 == c3) {
    SAME[k] = 1
  }
}
mean(SAME)
(2*N - 1)/N**2
