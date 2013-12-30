/**
 * @param : {number} 要计算的数
 * @return : {number}
 */

function incremadd(size) {

    var k = 0; // 本地变量
    var s = 0;
    /* step1 p[0] 成立 */

    /* step2 若p[n] 成立 则 p[n+1] 成立 */
    while (k <= size) {
        s = s + k;
        k++;
    }

    return s;
}

var result = incremadd(100);
console.log(result);
