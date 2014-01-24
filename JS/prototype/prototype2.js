/**
 * prototype 情况
 */

// snippet1
var yx01 = new function() {return "圆心"};
console.log('yx01:',yx01);

// snippet2
var F = function(){
    this.age = 21;
    return "hidoos";
}

var yx02 = new F();
console.log('yx02:',yx02);

var yx03 = new function(){ new String('hidoos');}
console.log('yx03:',yx03);

// snippet3 将构造函数当作普通函数来使用

function Person(name,age,job){
    this.name = name || 'hidoos';
    this.age = age || 22;
    this.job = job || 'job';
}

var x = new Person();
console.log('x:',x);
