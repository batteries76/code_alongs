// ex4
// write a command line application to count lines of code in a file

// commonjs, amd, es6

// node way of dealing with modules is based on commonjs

var fs = require('fs'); // return an object and assign it to fs

// fs.readFileSync()

var buffer = fs.readFileSync('ex2.js');

console.log(buffer);

var str = buffer.toString();

console.log(str);

buffer = fs.readFileSync(process.argv[2]);
fileStr = buffer.toString();
fileArr = fileStr.split("\n");
console.log(fileArr.length);
