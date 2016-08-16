function foo(bar) {

  bar();
  function bar = function() {
    console.log('wat');
  }
}

foo();
