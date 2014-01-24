/**
 * underscore 链式操作
 * source: http://underscorejs.org/docs/underscore.html#section-14
 */


var arr1 = [2,3,4,9];

var result = us(arr1)
            .chain()
            .map(function(item){return ++item})
    /*
            .first()
            .value();
            */
var result2 = us.map(arr1,function(item){
    return item*2;
});

console.log(result);
console.log('result2:',result2);
