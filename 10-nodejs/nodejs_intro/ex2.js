// command line arguments

// console.log(process.argv[2]);
//
// console.log(Number(process.argv[2])+Number(process.argv[3])+Number(process.argv[4]));
//
// console.long(length(process.argv))

var total = 0;

for (var i=2; i<process.argv.length; i++){
  total = total + +process.argv[i];
}

console.log(total);
