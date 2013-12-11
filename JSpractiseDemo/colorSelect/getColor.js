/**
 * @return {string} color - 返回一个字符颜色字符串
 *
 */
var getRandomColor = function() {
    return "#" +
        (function(color) {
        return (color += '0123456789abcdef' [Math.floor(Math.random() * 16)]) && (color.length == 6) ? color : arguments.callee(color);
    })('');

}

var color = getRandomColor();

console.log(color);

var elColor = document.getElementById('color'),
    elChangeColor = document.getElementsByClassName('change-color')[0];

elChangeColor.addEventListener('click', function() {

    elColor.style.backgroundColor = getRandomColor();
    return false;

}, false);
