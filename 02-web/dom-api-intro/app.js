console.log('Welcome to PTV');

var line = ['richmond', 'eastRichmond', 'burnley', 'hawthorn', 'glenferrie'];

var getJourney = function(origin, destination){

  var startStationIndex = line.indexOf(origin);
  var endStationIndex = line.indexOf(destination);

  return line.slice(startStationIndex, endStationIndex);
}

var originInput = document.getElementById('originInput');
var destinationInput = document.getElementById('destinationInput');

var goBtn = document.getElementById('goBtn');

goBtn.addEventListener('click', function() {

  var origin = originInput.value;
  var destination = destinationInput.value;

  console.log( getJourney(origin, destination) );
} );
