/**
 * Write a function named numbers that returns true if all the parameters it is passed are numbers. Otherwise, the function should return false. The function should accept any number of parameters.
 *
 * @doc:
     numbers(1,2,3,4,5) => true
     numbers(1,'2',3); => false
 */


function numbers() {
  if (arguments[0] == null) return false;
  var tmp = true;

  for (var i = 0; i < arguments.length - 1; i++) {// arguments.length 为什么是 arguments.length -1 ?
    if (typeof arguments[i] != 'number')
      tmp = false
  }
  return tmp;
}
