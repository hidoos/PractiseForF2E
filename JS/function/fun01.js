/*
 * 函数做为值
 */

function add(a,b){
    return a + b;
}
function remove(a,b){
    return a - b;
}

function getmath(a,b,handler){
    return handler(a,b);
}

var result = getmath(2,3,add);

console.log(result);
