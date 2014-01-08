/**
 * js函数作为值
 * @param {number} a
 * @param {number} b
 * @return {callback} callback
 */
function mathfn(a, b, fn) {
  return fn(a, b);
}

function add(a, b) {
  return a + b;
}

function remove(a, b) {
  return a - b;
}


var result = mathfn(2,3,add);

console.log('加法：',result);
console.log('减法：',mathfn(10,3,remove));
