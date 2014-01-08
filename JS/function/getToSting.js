/**
 * 创建一个调用另外一部分的函数 ??
 */

var toSting = Object.prototype.toString;

var isString = function(obj) {
  return toString.call(obj) == '[object String]';
}

var isFunction = function(obj) {
  return toString.call(obj) == '[object Function]';
}

var str1 = "joysk";

var getName = function() {
  return "console";
};
