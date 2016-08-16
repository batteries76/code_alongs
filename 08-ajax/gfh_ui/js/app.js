
$.ajax({

  url: 'http://localhost:3000/api/dishes'

}).done(function(dishes){

  _.each(dishes, function(dish) {

    console.log(dish);

    var $newImage = $('<div>').addClass('image');
    var $newDesc = $('<div>').addClass('desc').html('<h2>' + dish.name + '</h2>');
    var $newItem = $('<div>').addClass('item');
    var $newLike = $('<div>').addClass('like');

    $newItem.append($newImage);
    $newItem.append($newDesc);
    $newItem.append($newLike);
    $newItem.append($newItem);

    $('.list').append($newItem);

  });
});

$('.list').on('click', '.item', function() {
  console.log('this');
  $('.container').empty();
  var dishName = $(this).find('h2').text();
  var template = Handlebars.compile($('#dish-details-template').html());
  var html = template({ name: dishName })

  $('.container').html(html);
});
