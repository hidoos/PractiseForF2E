/**
 *  演示闭包和循环
 */

function getArray() {
  var arr = [];
  var i = 0;
  for (i = 0; i < 3; i++) {
    arr[i] = function() {
      return i;
    }
  }
  return arr;
}

var get = getArray();
