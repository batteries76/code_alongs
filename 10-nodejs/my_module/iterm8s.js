
var willPanic = function(name) {

  random = Math.random()

  if (random < 0.3){
    return console.log(name + ' false');
  }
  else {
    return console.log(name + ' true');
  }
}
// console.log(getIterm8sColors()[0]);

module.exports = {
  willPanic: willPanic

};
