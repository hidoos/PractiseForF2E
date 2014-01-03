/**
 * 什么是事件：这里是代码片段 snippet
 * 输出事件名称
 */
var log = document.getElementById('log'),
    i = '',
    out = [];

for (i in window) {
    if (/^on/.test(i)) {
        out[out.length] = i;
    }
}

log.innerHTML = out.join(', ');
