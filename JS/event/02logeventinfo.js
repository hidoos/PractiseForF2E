/**
 * 记录触发事件时，事件的回调函数获得的事件对象的属性
 */

// out 用dom元素去存，result，console输出用的
var log = document.createElement('log'),
    out = '',
    result = '';

document.addEventListener('click', logeventinfo, false);
document.addEventListener('keypress', logeventinfo, false);

function logeventinfo(ev) {
    log.innerHTML = '';
    out = '<ul>';

    for (var i in ev) {
        if (typeof ev[i] === 'function' || i === i.toUpperCase()) {
            console.log('event对象方法名称? %s \n event方法返回值：', i,ev[i]);
            continue;
        }
        out += '<li><span>' + i + '</span>:' + ev[i] + '</li>';
        console.log('event事件对象属性名称 %s \n event属性对应的值：', i,ev[i]);
    }

    log.innerHTML += out + '</ul>';

    console.log(log.innerHTML);
}

//todo1 换一种比较好的写法，拼字符串实在是太麻烦了
