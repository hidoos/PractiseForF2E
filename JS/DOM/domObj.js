/**
 * 构造函数prototype实例，this代码
 * 文章： http://www.zhangxinxu.com/wordpress/2013/07/jquery-%E5%8E%9F%E7%90%86-%E6%9C%BA%E5%88%B6/
 */

var F = function() {

}

/* thisiao 代表什么？ 返回什么值 */
F.prototype.hide = function() {
    this.style.display = "none";
    return new F();
}
