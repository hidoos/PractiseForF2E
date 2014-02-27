/**
 * 闭包实现访问下一个数组元素的函数
 */

function setup(x) {
  var i = 0;
  return function() {
    return x[i++]
  }
}

var next = setup(["a", "b", "c"]);
