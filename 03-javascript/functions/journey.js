console.log('journey');

var journeyPlan = function(initiate, destination){

  var alameinUp = ['richmond', 'flindersStreet'];
  var alameinDown = ['richmond', 'eastRichmond', 'burnley', 'hawthorn', 'glenferrie'];
  var glenWaverleyUp = ['richmond', 'parliament', 'melbourneCentral', 'flagstaff'];
  var glenWaverleyDown = ['richmond', 'kooyong', 'tooronga'];
  var sandyUp = ['richmond', 'southernCross'];
  var sandyDown = ['richmond','southYarra', 'prahran', 'windsor'];
  var network = [alameinUp, alameinDown, glenWaverleyUp, glenWaverleyDown, sandyUp, sandyDown];
  var setLine;
  var setDestLine;
  var setInitLine;
  var setInitIndex;
  var setDestIndex;
  var index;

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
  setInitIndex = indexFinder(initiate);
  setDestLine = lineFinder(destination);
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
      reverseIndex++;
      stops++;
    }

    var stopper = 1;

    while(stopper <= setDestIndex){
      console.log(setDestLine[stopper]);
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
        console.log(setInitIndex);
        stops++;
      }
      console.log('Number of stops: ' + stops);
    }
    else {
      while(setInitIndex > setDestIndex){
        setInitIndex--;
        console.log(setInitLine[setInitIndex]);
        stops++;
      }
    console.log('Number of stops: ' + stops);
    }
  }
}
