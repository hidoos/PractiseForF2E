/**
 * @param {string} his
 * @return {Number} hisoo
 */

window.onload = function() {
    var elDemo = document.querySelector('.demo')
    i = '',
        out = '';

    var doc = document,
        win = window;
    doc.addEventListener('click', logeventtarget, false);

    function logeventtarget(ev) {
        var target = ev.target,
            currentTarget = ev.currentTarget;
        elDemo.innerHTML = 'target' + ev.target;
        elDemo.innerHTML += '\ncurrentTarget' + ev.currentTarget;

        console.log('target',ev.target);
        console.log('currenttarget',ev.currentTarget);
    }
}

/**
 * target 是指触发事件的元素，ercurrentTarget属性则是指：绑定事件的元素
 */
