04.01 - Exercise 11 - Monty Hall

RunMonty <- function(strat="stay", report = FALSE) {
  # Draw winning door
  winDoor = sample(1:3, size=1)
  
  # Contestant door selection
  contDoor = sample(1:3, size=1)
  
  altDoor = 0
  if (winDoor == contDoor) {
    # Contestant has currently selected the right door
    # Host opens a door at random
    # Contestant can switch to altDoor (remaining closed)
    altDoor = sample(setdiff(1:3, winDoor), size=1)
  } else {
    # Contestant selects wrong door
    # Host opens remaining door
    # altDoor becomes winDoor
    altDoor = winDoor
  }
  
  # Contestant strategy
  win = 0
  if (strat == "stay") {
    if (contDoor == winDoor) {
      win = 1
    }
  } else {
    if (altDoor == winDoor) {
      win = 1
    }
  }
  
  if(report) {
    cat(sprintf("Winning  door: %d \n", winDoor))
    cat(sprintf("First select.: %d \n", contDoor))
    if (strat == "stay") {
      cat(sprintf("Final select.: %d \n", contDoor))
    } else {
      cat(sprintf("Final select.: %d \n", altDoor))
    }
    cat(sprintf("-------\n"))
    if (win == 1) {
      cat(sprintf("OUTCOME      : WIN\n"))
    } else {
      cat(sprintf("OUTCOME      : LOSS\n"))
    }
  }
  return(win)
}


RunMonty(strat = "stay", report = TRUE)
RunMonty(strat = "switch", report = TRUE)

# Run 1000 times with both strategies
NGAMES = 1000
stratStay = rep(0, NGAMES)
stratSwitch = rep(0, NGAMES)
for(n in 1:NGAMES) {
  stratStay[n] = RunMonty(strat = "stay")
  stratSwitch[n] = RunMonty(strat = "switch")
}
mean(stratStay)
mean(stratSwitch)