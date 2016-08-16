console.log('journey');

var initialStop = document.getElementById('origin-input');
var destStop = document.getElementById('destination-input');

var makeJourney = document.getElementById('create-journey');

makeJourney.addEventListener('click', function() {

  var initiate = initialStop.value;
  var destination = destStop.value;

  var journeyObject = journeyPlan(initiate, destination);
  console.log(journeyObject);
  journeyPrinter(journeyObject);
  return journeyObject;
} );

var journeyPrinter = function(journeyObj) {
  var journeyStr = '';
  var stopsStr = journeyObj.stopsArr[0];
  for (i=1; i<journeyObj.stopsArr.length; i++){
    stopsStr += ' -> ' + journeyObj.stopsArr[i];
  }

  if(journeyObj.changeLines === 0) {
    journeyStr = 'Get on at ' + journeyObj.stopsArr[0] + ' and take the next train ' + journeyObj.numStops + ' stops to ' + journeyObj.stopsArr[i-1] + '<br>' + stopsStr;
  }
  else {
    journeyStr = 'Get on at ' + journeyObj.stopsArr[0] + ' and take the next train ' + journeyObj.numStops + ' stops to ' + journeyObj.stopsArr[i-1] + ', changing trains at Richmond. <br>' + stopsStr;
  }
  document.getElementById("journey-data").innerHTML = journeyStr;
}

var journeyPlan = function(initiate, destination){

  var alameinUp = ['Richmond', 'Flinders Street'];
  var alameinDown = ['Richmond', 'East Richmond', 'Burnley', 'Hawthorn', 'Glenferrie'];
  var glenWaverleyUp = ['Richmond', 'Parliament', 'Melbourne Central', 'Flagstaff'];
  var glenWaverleyDown = ['Richmond', 'Kooyong', 'Tooronga'];
  var sandyUp = ['Richmond', 'Southern Cross'];
  var sandyDown = ['Richmond','South Yarra', 'Prahran', 'Windsor'];
  var network = [alameinUp, alameinDown, glenWaverleyUp, glenWaverleyDown, sandyUp, sandyDown];
  var setLine;
  var setDestLine;
  var setInitLine;
  var setDestIndex;
  var setInitIndex;

  var index;
  var journeyArr = [];

  var journeyObj = {
    numStops : 0,
    stopsArr : [],
    initLine : null,
    destLine : null,
    changeLines : 0
  };

  var lineFinder = function(stop){

    for(i=0;i<network.length;i++){
      for(j=0;j<network[i].length;j++){
        if(stop === network[i][j]){
          setLine = network[i];
        }
      }
    }
    return setLine;
  }

  var indexFinder = function(stop){

    for(i=0;i<network.length;i++){
      for(j=0;j<network[i].length;j++){
        if(stop === network[i][j]){
          setLine = network[i];
          index = j;
        }
      }
    }
    return index;
  }

  setInitLine = lineFinder(initiate);
  journeyObj.initLine = lineFinder(initiate);
  setInitIndex = indexFinder(initiate);
  setDestLine = lineFinder(destination);
  journeyObj.destLine = lineFinder(destination);
  setDestIndex = indexFinder(destination);
  console.log(setInitLine);
  console.log(setInitIndex);
  console.log(setDestLine);
  console.log(setDestIndex);

  var reverseStartLine = setInitLine.reverse();
  var reverseIndex = reverseStartLine.length - setInitIndex - 1;
//  console.log(reverseStartLine);
//  console.log(reverseIndex);

  var stops=0;

//  if (initiate === destination){
//    console.log('You are at your destination!')
//    break;
//  }

  if(setInitLine !== setDestLine){
    while(reverseIndex < reverseStartLine.length){
      console.log(reverseStartLine[reverseIndex]);
      journeyArr.push(reverseStartLine[reverseIndex]);
      journeyObj.stopsArr.push(reverseStartLine[reverseIndex]);
      reverseIndex++;
      stops++;
    }

    journeyObj.changeLines = 1;
    var stopper = 1;

    while(stopper <= setDestIndex){
      console.log(setDestLine[stopper]);
      journeyArr.push(setDestLine[stopper]);
      journeyObj.stopsArr.push(setDestLine[stopper]);
      stops++;
      stopper++;
    }

  console.log('Number of stops: ' + stops);

  }
  else {
    setInitLine.reverse();
    if(setInitIndex < setDestIndex){
      while(setInitIndex < setDestIndex){
        setInitIndex++;
        console.log(setInitLine[setInitIndex]);
        journeyArr.push(setInitLine[setInitIndex]);
        journeyObj.stopsArr.push(setInitLine[setInitIndex]);
        stops++;
      }
      console.log('Number of stops: ' + stops);
    }
    else {
      while(setInitIndex > setDestIndex){
        setInitIndex--;
        console.log(setInitLine[setInitIndex]);
        journeyArr.push(setInitLine[setInitIndex]);
        journeyObj.stopsArr.push(setInitLine[setInitIndex]);
        stops++;
      }
    console.log('Number of stops: ' + stops);
    }
  }

  journeyObj.numStops = stops-1;

  return journeyObj;
}
