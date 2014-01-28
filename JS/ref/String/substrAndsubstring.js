/**
 * @example: http://www.w3schools.com/jsref/jsref_obj_string.asp
 * @doc: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/String
 * @question: slice 和 substring的区别？http://www.bennadel.com/index.cfm?event=blog.viewcode&id=2159&index=1
 * @url: http://www.bennadel.com/blog/2159-Using-Slice-Substring-And-Substr-In-Javascript.htm
 */

/**
 * 从一个字符串中提取一个字符串
 * @doc： substr()和substring都有两个参数，第二个参数都是可选的，不同的地方在于：
 *        substr的第二个参数是：代表截取的count
 *        而substring代表截取的：indexes 索引编号
 */

"hello,world".substr(0,8)
// => "hello,wo"
"hello,world".substring(0,8)
// => "hello,wo"
"hello,world".substr(1,8)
// => "ello,wor"
"hello,world".substring(1,8)
// => "ello,wo"
"hello,world".substr(3,8)
// => "lo,world"
"hello,world".substring(3,8)
// => "lo,wo"

/**
 *
 */
