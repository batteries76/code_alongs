console.log('loopsHW');

var i = 1;
var choices = [];
while(i < 6) {
  if (i == 1) {
    var choice = window.prompt("Please enter your first choice:");
    choices.push(choice);
    console.log("Your first choice was " + choice);
  } else if (i == 2) {
      var choice = window.prompt("Please enter your 2nd choice:");
      choices.push(choice);
      console.log("Your second choice was " + choice);
  } else if (i == 3) {
      var choice = window.prompt("Please enter your 3rd choice:");
      choices.push(choice);
      console.log("Your 3rd choice was " + choice);
  } else {
      var choice = window.prompt("Please enter your " + i + "th choice:");
      choices.push(choice);
      console.log("Your " + i + "th choice was " + choice);
  }
  i++;
}
console.log(choices);

for(i = 0; i <= 20; i++) {
  if (i%2 === 0) {
    console.log(i + " is even");
  }
  else {
    console.log(i + " is odd");
  }
}

for(i = 1; i <= 10; i++) {
  for(j = 1; j <= 10; j++) {
    var mult = i * j;
    console.log(mult);
  }
}

console.log("On the menu tonight: Steak, fruit salad, tofurkey, pork chops.")
meal = window.prompt("Please enter your choice:");
if (meal !== 'Steak' && meal !== 'pork chops') {
  console.log("This cuisine is vegan friendly.");
} else {
  console.log("Vegans beware!");
}
