console.log('loops');

i = 0;
while (i<5) {
  var guessesLeft = 5 - i;
  var guess = window.prompt("You have " + guessesLeft + " guesses left. Please enter a number:");
  var counter = 0;
  secretNumber = 23;

  if (guess !== secretNumber) {
    while (counter <== guess) {
      console.log('you fail life, guess again');
      counter++;
    }
  }
  else  {
    console.log("How'd you do that?!")
    break;
  }
i++;
}
