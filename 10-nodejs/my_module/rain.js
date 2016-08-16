

var rain = function() {

  random = Math.random()
  if (random < 0.3){
    return 'no';
  }
  else {
    return 'yes';
  }
}


module.exports = rain();
