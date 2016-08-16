console.log('Welcome to CrapCalc!');

var getSum = function(firstValue, secondValue){

  var sum = Number(firstValue) + Number(secondValue);

  return sum;
}

var firstValueInput = document.getElementById('firstValue');
var secondValueInput = document.getElementById('secondValue');

var goBtn = document.getElementById('goBtn');

goBtn.addEventListener('click', function() {

  var first = firstValueInput.value;
  var second = secondValueInput.value;

  document.getElementById("result").innerHTML = '<br>' + 'Result is: ' + getSum(first, second);
} );
