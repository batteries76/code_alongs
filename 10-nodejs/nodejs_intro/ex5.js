// reading files again
// but with callbacks

var fs = require('fs');

// fs.readFile(filename, fileEncoding, callback)

// callback signature
fs.readFile('index.html', 'utf-8', function(err, data) {
console.log(data.toString());
});
