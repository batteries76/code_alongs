var Router = Backbone.Router.extend({

  routes: {
    "about": "aboutPage",
    "home": "homePage",
    "posts/:id": "blogPost",
    "dishes/:id": "showDish"
  },

  showDish: function(id){
    console.log('go get the dish with id = ' + id);

    $.ajax({
      url: 'http://localhost:3000/api/dishes'
    }).done(function(dishes){
      console.log(dishes);
      var dish = _.find(dishes, function(dish){
        return dish.id === id;
      })
    })
  },

  blogPost: function(id){
    console.log('a blog post with id = ' + id);
  },

  homePage: function() {
    $('#about').hide();
    $('#home').show();
    console.log('home page');
  },

  aboutPage: function() {
    $('#home').hide();
    $('#about').show();
    console.log('about page');
  }
});

var router = new Router();
Backbone.history.start();
