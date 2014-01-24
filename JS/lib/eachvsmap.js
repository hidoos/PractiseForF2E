/**
 * eachmap 用法区别
 * _.keys : http://underscorejs.org/docs/underscore.html#section-73
 * Native Object.keys : https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Object/keys
 * _.has http://underscorejs.org/docs/underscore.html#section-119
 * hasOwnProperty: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Object/hasOwnProperty
 */

var arr1 = [1,2,4];
var somebody = ['hidoos','3','man'];

// 如果不制定 context上下文的，回调里的this是指global对象，指定了context的话，this就是制定的context对象
var result = _.each(arr1,function(item,index){
    console.log(this[index]);
},somebody);

console.log('each arr1 result :',result);

var mapResult = _.map(arr1,function(item,index){
    return item*2;
});
console.log('map arr1 result :',mapResult);

/*
_.each([1, 2, 3], alert);
//=> alerts each number in turn...
_.each({one: 1, two: 2, three: 3}, alert);
//=> alerts each number value in turn...
*/
