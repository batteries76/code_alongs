
console.log('pyramid');
var charPyr = window.prompt("Please enter the character you want in the pyramid: ");
var numPyr = window.prompt("Please enter the height of the pyramid: ");
var i = 0;
var j = 0;
var widthPyr = (numPyr * 2) + 1;
var stringer;
var widthArr = [];
var matrixArr = [];

while(i<widthPyr){

  widthArr.push(charPyr);

  i++;
}

console.log(widthArr);

while(numPyr){

  matrixArr = matrixArr.concat(widthArr);

  numPyr--;
}

console.log(matrixArr);
