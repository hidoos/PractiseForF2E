/**
 * 判断鼠标的位置
 * @note: a.鼠标在viewport中的位置
 *        b. 鼠标在当前页面的位置
 *        c. 滚动条滚动距离
 */

var plot = document.querySelector('.plot');
offset = plot.offsetWidth / 2;

document.addEventListener('click',function(ev){
    plot.style.left = (ev.pageX - offset) + 'px';
    plot.style.top= (ev.pageY - offset ) + 'px';
},false);


/**
 * @todo : 让小球用动画的形式动起来
 */
