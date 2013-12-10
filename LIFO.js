/**
 * Stack |  Last in First Out 
 */
 
var arr = ["hidoos","man","fe2"];
console.log('init arr:',arr);
var count = arr.push('last'); // => arr.length 
console.log('push arr:',arr);
console.log('push arr lenght : %d',count);
var item =  arr.pop();        // => "last"
console.log('pop item:',item);

