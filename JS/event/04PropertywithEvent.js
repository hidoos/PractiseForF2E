/**
 * @param {string} his
 * @return {Number} hisoo
 */
var log = document.createElement('log'),
    i = '',
    out = '';

var doc = document;
doc.addEventListener('click',function(ev){
    console.log('target',ev.target);
    console.log('currentTarget',ev.currentTarget);
},false);
