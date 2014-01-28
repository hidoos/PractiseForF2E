/**
 * 转换字符串
 */

function specify(str){
    return str.split('').join();
}

function specifyUrl(url){
    return url.split('=').join();
}

var str = "hello,world";

var result = specify(str);

var url = "?name=hidoos&sex=man&job=f2e";
