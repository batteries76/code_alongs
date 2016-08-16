console.log('age and geo');

function calculateAge(birthYear, yourYear) {
//  var d = new Date();
//  var currentYear = d.getFullYear();

  if (yourYear === undefined) {
    currentYear = new Date().getFullYear();
  }

  var age = yourYear - birthYear;
  console.log('So you are either ' + age + ' or ' + (age-1));

  return age;
}

function calculateSupply(age, amountPerDay) {
  var maxAge = 85;
  var lifeSupply = (maxAge - age) * amountPerDay * 365.25;
  var ceilSupply = Math.ceil(lifeSupply);

  console.log('You will need ' + ceilSupply + ' units to last you until ' + maxAge);

  return ceilSupply;
}

function calcCircumference(radius) {
  circumference = radius * 2 * Math.PI;
  console.log('The circumference is ' + circumference);
  return circumference;
}

function calcArea(radius) {
  area = radius * radius * Math.PI;
  console.log('The area is ' + area);
  return area;
}
