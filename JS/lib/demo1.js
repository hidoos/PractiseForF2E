/**
 * demo1 创建一个underscore的包装对象
 * source : http://underscorejs.org/docs/underscore.html#section-9
 */
var us = _.noConflict();
console.log("demo2:_:",_);
var jsDate = {
    book: {
        name: "hidoos",
        age: 21
    }
}

var underscoreDate = us(jsDate);

console.log(jsDate);
console.log(underscoreDate);

/**
 * demo2 防止冲突解决_ 被占用的情况
 */



// todo1 变量的预处理机制？？
