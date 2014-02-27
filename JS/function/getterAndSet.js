/**
 * 利用闭包写的访问器，设置函数，其中内部的变量是被隔离的，外部不可以直接修改，必须使用提供的访问函数才可以获取，设置函数才可以设置
 */

var getValue, setValue;

(function() {
  var secret;
  getValue = function() {
    return secret;
  }
  setValue = function(v) {
    secret = v;
  }
})();
