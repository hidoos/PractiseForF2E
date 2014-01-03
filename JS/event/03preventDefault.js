/**
 * 简单的列子说明 通过事件对象event的preventdefault去阻止事件的默认行为
 * @note: a: ev.preventDefault()
 *        b: window.event.returnValue = false;兼容ie9以下的写法
 *        b: return false 这里有一个点，return false 可能还会阻止事件的冒泡
 *
 * @note2 : 绑定了一个事件之后，回调函数里有一个this，这个this的绑定通常是绑定事件的dom元素
 *          event提供了一个 ev.target 和 ev.currentTarget 属性来说明触发事件的具体元素
 *          这个算是比较难理解的点了
 *
 * <a class='prevent' href="http://www.hidoos.me"> hidoos @ blog </a>
 * <a class='normal' href="http://www.weibo.com"> weibo </a>
 */

var elNormal = document.querySelector('.normal'),
    elPrevent = document.querySelector('.prevent');

console.log('querySelector normals returnValue: %s \n querySelector prevent returnValue: %s', normal, prevent);
// => 如果没有选择的话，返回null，有的话，返回一个object，具体构造函数是什么？我自己还不太清楚

elPrevent.addEventListener('click', function(ev) {
    alert('fabulous, really!');
    ev.preventDefault();
}, false);

elNormal.addEventListener('click', function(ev) {
    alert('fabulous, really!');
}, false);

/**
 * todo 查看一下最新的dom规范，怎么规定dom的？
 * https://developer.mozilla.org/en/docs/DOM
 * http://www.w3.org/DOM/
 */
