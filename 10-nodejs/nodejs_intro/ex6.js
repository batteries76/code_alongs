// make a get request to omdbapi
// http://omdbapi.com/?t=jaws

// require 'httparty'
// res = HTTParty.get('http://omdbapi.com/?t=rounders')

// importing an object with methods to use
var http = require('http');

var url = 'http://omdbapi.com/?t=rounders';

var callback = function(response) {
  console.log('finished requesting omdbapi');
  response.setEncoding('utf-8');
  console.log(response);

  response.on('data', function(data) {
    console.log(data);
  })
}

http.get(url, callback)
