console.log('I\'m ready');

// $.ajax({
//   url: 'http://www.omdbapi.com/?s=jaws',
//   method: 'get'
// }).done(function(movies){
//   movies.forEach(function(movie) {
//     console.log(movie);
//     // create new elements
//     // <p>dish name</p>
//
//     var $newMovie = $('<p>').text(movie.name);
//     // put back somewhere on the pageX
//     // say '.movies'
//     debugger
//     $('.movie').append( $newMovie );
//   });
// });

$.ajax({
  url: 'http://localhost:3000/api/dishes',
  method: 'get'
}).done(function(dishes){
  dishes.forEach(function(dish) {
    console.log(dish);
    // create new elements
    // <p>dish name</p>

    var $newDish = $('<p>').text(dish.name);
    // put back somewhere on the pageX
    // say '.dishes'
    debugger
    $('.dishes').append( $newDish );
  });
});

// forEach you have to pass a callback function
// for the callback function you need a dish
