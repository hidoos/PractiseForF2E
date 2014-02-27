/**
 * 将16进制代码转换成 rgb（00,11,ff）的形式；
 * doc:http://99jty.com/?p=573
 * http://www.cnblogs.com/rubylouvre/archive/2010/03/09/1681222.html
 * http://www.cnblogs.com/rubylouvre/archive/2009/07/24/1530264.html
 * http://www.cnblogs.com/rubylouvre/archive/2009/09/24/1572977.html
 */
var parseColor = function (val) {
	var r,
	g,
	b;
	// 默认rgb
	if (/r/.test(val)) {
		var arr = val.match(/\d+/g);
		r = parseInt(arr[0]);
		g = parseInt(arr[1]);
		b = parseInt(arr[2]);
	}
	// 进制转换
	else if (/#/.test(val)) {
		var len = val.length;
		// #ffffff
		if (len === 7) {
			r = parseInt(val.slice(1, 3), 16);
			g = parseInt(val.slice(3, 5), 16);
			b = parseInt(val.slice(5), 16);
		}
		// #fff
		else if (len === 4) {
			r = parseInt(val.charAt(1) + val.charAt(1), 16);
			g = parseInt(val.charAt(2) + val.charAt(2), 16);
			b = parseInt(val.charAt(3) + val.charAt(3), 16);
		}
	} else {
		alert('颜色格式不正确,请重新输入');
	}
	return {
		r : r,
		g : g,
		b : b
	}
};
console.log(parseColor('#fdffdf'))
console.log(parseColor('#fdf'))
