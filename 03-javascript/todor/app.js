console.log('todor');

var newTodoBtn = document.querySelector('#new-todo-btn');
var todoList = document.getElementById('todos');

var addTodo = function() {

  var todoText = document.querySelector('#todo-input').value
  var newTodoElem = document.createElement('li');
  var textNode = document.createTextNode(todoText);
  newTodoElem.appendChild(textNode);

//  newTodoElem.addEventListener('click', function() {
//    newTodoElem.style.textDecoration = 'line-through';
//    console.log('buzz off');
//  });

  todoList.appendChild(newTodoElem);
}

newTodoBtn.addEventListener('click', addTodo);

todoList.addEventListener('click', function(event) {

  console.log(event);
  if(event.target.tagName == 'LI'){
    if(event.target.className === 'done'){
      console.log('summat');
      event.target.className = 'undone';
      console.log(event.target);
    }
    else {
      console.log('something clicked');
      event.target.className = 'done';
      console.log(event.target);
    }
  }
});
//var li = document.querySelector('#todos li');
