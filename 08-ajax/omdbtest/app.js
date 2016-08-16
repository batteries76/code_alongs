console.log('movie app');

$('#button').on('click', function(event) {
  event.preventDefault();
  
  console.log('clicker');

  var settings = {
    url: 'http://www.omdbapi.com/?s=' + $('#movie').val(),
    method: 'get'
  }

  $.ajax(settings).done(function(movies){

    movies['Search'].forEach(function(movie) {

    console.log(movie.Title);

    var $newMovie = $('<p>').text(movie.Title);

    $('body').append( $newMovie );
    });
  });
});
