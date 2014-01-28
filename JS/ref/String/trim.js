var fooStr = " foo ";

var result = fooStr.trim();

console.log(result);

/**
 * 兼容ie
 * @note: https://developer.mozilla.org/zh-CN/docs/JavaScript/Reference/Global_Objects/String/Trim
 */

if(!String.prototype.trim){
    String.prototype.trim = function(){
        return this.replace(/^\s+|\s+$/g,'');
    }
}
