/**
 * Event delegation
 *
 * 使用事件对象 event的target属性，可以获得当前触发事件的dom对象，这样我们只用绑定一个父级的dom元素，然后判断一下
 * ev.target ，想想看，如果为每一个表格去监听对象的话，那得有多麻烦啊！
 */

/**
 * 下面是一个无序列表，鼠标悬停时，显示链接地址，用tagName去区分触发悬停事件的元素
 * chrome and firefox 都有 debugger，可以用来调试，可以用这个学习一下调试js
 */

var resources = document.querySelector('#resources'),
    log = document.querySelector('.log'),
    i = '',
    out = '';
