//1. For this lab, you'll be researching [JavaScript's ```else if``` statement](https://www.google.com/webhp?sourceid=chrome-instant&ion=1&espv=2&es_th=1&ie=UTF-8#q=javascript+else+if),
//and creating one of your own.
//2. Write an ```else if``` statement that checks to see if a variable called ```year``` is in the past, present, or future.
//    1. "I'm in the present!" if the year is equal to 2015
//    2. "Whoa! Blast from the past!" if the year is less than 2015
//    3. "Greetings from the future!" if the year is greater than 2015
//4. **Bonus Challenge** Research JavaScript's
 //[date methods](https://www.google.com/search?q=javascript+new+date&oq=javascript+new+date&aqs=chrome..69i57j0l5.4422j0j4&sourceid=chrome&es_sm=119&ie=UTF-8#q=javascript+date+methods),
 //and find one that will return to you the current, four digit year.
 //Once you have grabbed that year, assign it to a variable, and use that in your ```else if``` statement.

var dater = new Date();
var getYear = window.prompt("Please enter a year");
var currentYear = dater.getFullYear();
if (getYear < currentYear) {
   console.log("Whoa! Blast from the past!");
}
else if (getYear > currentYear) {
   console.log("Greetings from the future!");
}
else {
   console.log("I'm in the present!")
}
