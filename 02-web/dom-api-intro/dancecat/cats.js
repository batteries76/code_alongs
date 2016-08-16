console.log('catz');

var movePixels = 10;
var delayMs = 50;
var catTimer = null;
function catWalk() {
  var img = document.getElementsByTagName('img')[0];
  var currentLeft = parseInt(img.style.left);
  img.style.left = (currentLeft + movePixels) + 'px';
  if (currentLeft >= (window.innerWidth-img.width)) {
    movePixels *= -1;
    img.style.webkitTransform = ("scaleX(-1)");
  }
  if(currentLeft<=0) {
    movePixels *= -1;
    img.style.webkitTransform = ("scaleX(1)");
  }
  if(currentLeft === (window.innerWidth-img.width/2)){
    console.log('Halfway');
  }
  img.style.left = (currentLeft + movePixels) + 'px';
}

function startCatWalk() {
  catTimer = window.setInterval(catWalk, delayMs);
}

var startButton = document.getElementById('start-button');
var speedButton = document.getElementById('speed-button');
var stopButton = document.getElementById('stop-button');

startButton.addEventListener('click', function() {
  startCatWalk();
});

stopButton.addEventListener('click', function() {
  window.clearInterval(catTimer);
});

speedButton.addEventListener('click', function() {
  window.setInterval(catWalk, delayMs / 2);
})
