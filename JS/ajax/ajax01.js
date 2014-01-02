/**
 * 通过 XMLHttpRequest 创建一个xhr对象
 * @param {object}
 * @return {object}
 */
function createXhr(obj) {
    var obj = null;

    if (window.XMLHttpRequest) {
        obj = new XMLHttpRequest();
    } else {
        try {
            obj = new XMLHTTP('Microsoft.XMLHTTP');
        } catch (e) {}
        try {
            obj = new XMLHTTP('Msxml2.XMLHTTP.6.0');
        } catch (e) {}
        try {
            obj = new XMLHTTP('Msxml2.XMLHTTP.3.0');
        } catch (e) {}
        try {
            obj = new XMLHTTP('Msxml2.XMLHTTP');
        } catch (e) {}
    }

    return obj;

}

var xhr = createXhr();
console.log(xhr);
