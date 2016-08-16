ar students = "Katy Dattoma,Pranati Vyas,Christie Metson,LJ Krooker, Harry Aydin,Leo You,Ashley Pettit,Christopher Lee,Akiva Szental,Pauliina Solane,Matt Mckenzie,Keith Chong,Johan Codinha,Nick Wolf,Paul Salmon,Marty Brewster,Karina Thompson,Florian Josef Reheis,Emily Bie,Isha Nagpal,Bevin Sun,Alistair Martin"

var studentArray = students.split(',');
console.log(studentArray);

function grouper(studentArray, groupsOf) {
  groupsOf = Number(groupsOf);
  if (groupsOf < 2) {
    return "Please pick larger group sizes";
  }
  if (groupsOf > studentArray.length) {
    return "Please pick sane group sizes";
  }

  if (studentArray.length <= 1) {
    return "You need more students :)";
  }

  var numberOfStudents = studentArray.length;
  var result = [];
  var temp = numberOfStudents;
  var group = [];
  var finalArrayofArrays = [];

  for (var i = 0; i < numberOfStudents; i++) {
    var randomizedIndex = Math.floor(Math.random() * temp--);

    result.push(studentArray[randomizedIndex])
    studentArray.splice(randomizedIndex, 1);
  }

  console.log(studentArray, studentArray.length);
  console.log(result, result.length);

  for (var k = 0; k < numberOfStudents / groupsOf; k ++) {
    finalArrayofArrays.push(group);
    group = [];

    for (var j = 0; j < groupsOf; j++) {
      if ()
      group.push(result.pop());
    }

    console.log(group);
  }

  if(modulusOK>0)
    for(l=0; l<modulusOK ; l++){
      finalArrayofArrays[l].push(finalArrayofArrays[l]);
      console.log(l, finalArrayofArrays);
  }


}

console.log(grouper(studentArray, 3));
