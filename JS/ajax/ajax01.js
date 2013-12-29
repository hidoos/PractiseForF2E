/**
 * 先创建一个xhr对象
 */


/**
 * @param {object}
 * @return {object}
 */
function createXhr(obj) {
  var obj = null;


  if (window.XMLHttpRequest) {
    obj = new XMLHttpRequest();
  } else {
    try {} catch () {}
  }

  return obj;

}
var xhr = createXhr();
console.log(xhr);
