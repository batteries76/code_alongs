


var account = {
  name: 'dt ga fund',
  balance: 0,
  deposit: function(amount) {

  },
  getBalance: function(){
    return account.balance;
  }
}

// module pattern

// a factory to make accounts
// protecting my private variable

var makeAccount = function() {

  var balance = 0;

  var publicAPI = {
    getBalance: function() {
      return balance;
    },
    deposit: function(amount) {
      balance = balance + amount;ss
    }
  }

  return publicAPI;
}

// var savingsAccount = makeAccount();

var makeTicker = function(){

  var ticker = 0;

  var publicTick = {
    tick: function(){
      ticker++;
      return ticker;
    }
  }
  return publicTick;
}
var myTicker = makeTicker();

myTicker.tick() // 1
myTicker.tick() // 2
