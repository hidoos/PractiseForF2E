/**
 * 求数组的前N项和
 * @param {Array} arr 一个数组
 * @param {number} size 数组的编号
 * @returns {number} 返回数组的前N项和
 */
function sum(arr, size) {
    var s = 0; 
    var k = 0;
    
    while(k < size){ // 循环的循环不等式是什么？注意不能重复，也不能遗漏
        s = s + arr[k];
        k += 1;
    }
    
    return s;

}


