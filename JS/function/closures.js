var n = 0;

function f() {
  var b = "local";
  n = function() {
    return b;
  }

}

f();
console.log("N", n());
