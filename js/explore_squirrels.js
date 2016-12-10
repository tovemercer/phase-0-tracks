//string is passed in as an argument
//create empty variable to store reversed word
//iterate through passes in word backwards using neg integers
//  characters are stored (in reverse) in the empty variable
//returns reversed word

function reverse(str) {
  var result = "";
  for (var i = str.length - 1; i>= 0; i --) {
    result += str[i];
  }
  return result
}

console.log(reverse("hello"))