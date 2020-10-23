# R chooses a random number between 1 and 100
finalnum <- sample (1:100, 1)

# a function that asks for user input and returns their guessed number
getges <- function()
{
  guess <- readline(prompt="What is your guess? ")
  guess <- as.integer(guess)
  return (guess)
}

# a function that inputs the guessed number and compares it to the correct number, returning how it is in relation
# and a variable that indicates whether or not the user guessed the number correctly
  chkges <- function(guess)
  {
    status = 0
  if (guess < finalnum)
  {
    print("Higher!")
    
  }
  if (guess > finalnum)
  {
    print ("Lower!")
  
  }
  if (guess == finalnum)
  {
    print ("Correct!")
    status = 1
  }
    return (status)
  }
  
  
  val = 0
  guesscount = 0
  
  # a while loop is initiated that runs through the two functions until either 10 guesses have been used
  # or the correct number has been guessed
  while(guesscount<10 && val ==0)
  {
    val <- chkges(getges())
    guesscount = guesscount + 1
  }
  