# 02.01 - Exercise 11 - Chord of a circle

simChord <- function(NSIMS) {
  x0 = runif(NSIMS)
  y0 = runif(NSIMS)
  theta = runif(NSIMS, min=-pi/2, max=pi/2)
  
  m = tan(theta)
  
  # Distance
  d = abs((y0 - m*x0)/(sqrt(m**2 + 1)))
  # Random Chords
  chordInd = d < 1
  
  chords = d[chordInd]
  # As in Example 2.6, the length is larger than sqrt(3)
  # if the chord intersects a circle with radius 0.5
  prop = sum(chords < 0.5)/length(chords)
  return(prop)
} 

res = simChord(10000)
res
