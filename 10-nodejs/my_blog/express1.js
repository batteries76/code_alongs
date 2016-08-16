var express = require('express');
var app = express();
// var app = require('express')();
var PORT = 4567;

app.set('views', './views');
app.set('view engine', 'ejs');

app.get('/', function(request, response) {
  response.send('<h1>Hello World</h1>');
});

app.get('/about', function(request, response) {
  response.send('hello world');
});


var server = require('http').createServer(app);
server.listen(PORT, function() {
  console.log('listening on port ' + PORT);
});
