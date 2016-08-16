console.log('objects homework');

var recipeCard = {
  name: 'Puerco Pibil',
  serves: 4,
  ingredients: ['pork neck', 'orange juice', 'lemon juice', 'cumin', 'garlic', 'tequila']
};

var i=0;
console.log(recipeCard.name);
console.log('Serves: ' + recipeCard.serves);
console.log('Ingredients: ');
while(i<recipeCard.ingredients.length){
  console.log(recipeCard.ingredients[i]);
  i++;
}

var theHobbit = {
  author: 'JRR Tolkien',
  title: 'The Hobbit',
  alreadyRead: false
};

var LoTR = {
  author: 'JRR Tolkien',
  title: 'Lord of the Rings',
  alreadyRead: true
}

var bookArr = [theHobbit, LoTR];

for(j=0; j<bookArr.length; j++){
  if(bookArr[j].alreadyRead){
    console.log('You have already read ' + bookArr[j].title + ' by ' + bookArr[j].author);
  }
  else {
    console.log('You have not read ' + bookArr[j].title + ' by ' + bookArr[j].author);
  }
}

var movie = {
  title: 'The Big Lebowski',
  duration: '124',
  stars: ['Jeff Bridges', 'John Goodman']
}

var moviePrint = function(){
  console.log(movie.title + ' lasts for ' + movie.duration + ' minutes and stars ' + movie.stars[0] + ' and ' + movie.stars[1]);
}

console.log(moviePrint);
moviePrint();
