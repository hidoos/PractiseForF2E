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
