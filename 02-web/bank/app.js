console.log('bank');

var accBalance = 0;
var chequeBalance = 0;
//document.addEventListener('load', function() {
//})

//var button = document.querySelectorAll('buttons');

var changeValueAcc = document.getElementById('account-value');
var changeValueCheque = document.getElementById('chequeValue');

var depositAcc = document.getElementById('deposit-acc');
console.log(depositAcc);
var withdrawAcc = document.getElementById('withdraw-acc');
var depositCheque = document.getElementById('deposit-cheq');
var withdrawCheque = document.getElementById('withdraw-cheq');

depositAcc.addEventListener('click', function() {
//  console.log('something');
  var addValueAcc = changeValueAcc.value;
//  console.log('addValueAcc = ' + addValueAcc);
  var addValueNumber = Number(addValueAcc);
//  var accBalanceNumber = Number(accBalance);
  accBalance += addValueNumber;
  console.log('accBalance = ' + accBalance);
  document.getElementById("acc-balance").innerHTML = accBalance;
});

withdrawAcc.addEventListener('click', function() {
//  console.log('something');
  var addValueAcc = changeValueAcc.value;
//  console.log('addValueAcc = ' + addValueAcc);
  var addValueNumber = Number(addValueAcc);
//  var accBalanceNumber = Number(accBalance);
  if(accBalance>=addValueNumber) {
    accBalance -= addValueNumber;
  }
  else if ((accBalance<addValueNumber) && (chequeBalance>= (addValueNumber-accBalance))) {
    var excess = addValueNumber-accBalance;
    console.log('Account Balance now 0. ' + excess + ' taken from chequing account.');
    accBalance = 0;
    chequeBalance -= excess;
    console.log('chequeBalance = ' + chequeBalance);
  }
  else {
    console.log('You do not have enough funds for that transaction. You have $' + accBalance + ' remaining in your regular account, and $' + chequeBalance + ' in your chequing account.');
  }
  console.log('accBalance = ' + accBalance);
  document.getElementById("acc-balance").innerHTML = accBalance;
} );

depositCheque.addEventListener('click', function() {
//  console.log('something');
  var addValueCheque = changeValueCheque.value;
//  console.log('addValueAcc = ' + addValueCheque);
  var addValueNumber = Number(addValueCheque);
//  var accBalanceNumber = Number(accBalance);
  chequeBalance += addValueNumber;
  console.log('chequeBalance = ' + chequeBalance);
  document.getElementById("cheque-balance").innerHTML = chequeBalance;
} );

withdrawCheque.addEventListener('click', function() {
//  console.log('something');
  var addValueCheque = changeValueCheque.value;
//  console.log('addValueAcc = ' + addValueCheque);
  var addValueNumber = Number(addValueCheque);
  if(chequeBalance>=addValueNumber) {
    chequeBalance -= addValueNumber;
  }
  else if ((chequeBalance<addValueNumber) && (accBalance>= (addValueNumber-accBalance))) {
    var excess = addValueNumber-accBalance;
    console.log('Chequing account Balance now 0. ' + excess + ' taken from regular account.');
    chequeBalance = 0;
    accBalance -= excess;
    console.log('accBalance = ' + accBalance);
  }
  else {
    console.log('You do not have enough funds for that transaction. You have $' + accBalance + ' remaining in your regular account, and $' + chequeBalance + ' in your chequing account.')
  }
//  var accBalanceNumber = Number(accBalance);
  console.log('chequeBalance = ' + chequeBalance);
  document.getElementById("cheque-balance").innerHTML = chequeBalance;
} );
