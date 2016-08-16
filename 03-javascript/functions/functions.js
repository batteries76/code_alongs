console.log('functions');

function makeCakePudding() {
  console.log('goto coles');
  console.log('buy cake');
  console.log('buy pudding');
  console.log('mix them together');
}

function greeting(name) {
  console.log('hello ' + name);
  return 'hello ' + name;
}

greeting('iterm8s');

function microwaveIt(food) {
  var magicalWaves = "*_.-*_.-*-._*";
  food = food.split('').join(' ');
  console.log('cooked food: ' + food);
}
