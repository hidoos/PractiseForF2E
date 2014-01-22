/**
 * new constructor
 */

// new 表达式返回字符串

var F = function(id){
    this.name = "hidoos";
    return id;
}

var F2 = function(id){
    return document.getElementById(id);
}
var result = new F('man');
console.log('情况一：',result);

var result2 = new F2('prototype');
console.log('情况二：',result2);
