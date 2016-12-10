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


var good_day = true;
var eating_cake = true;

if (good_day && eating_cake) {
  console.log(reverse("!renniw"));
} else if (good_day && !eating_cake) {
  console.log(reverse("ybbahs oot ton"))
} else {
  console.log(reverse("deb ot kcab og tsuj"))
}

var good_day = true;
var eating_cake = false;

if (good_day && eating_cake) {
  console.log(reverse("!renniw"));
} else if (good_day && !eating_cake) {
  console.log(reverse("ybbahs oot ton"))
} else {
  console.log(reverse("deb ot kcab og tsuj"))
}

var good_day = false;
var eating_cake = false;

if (good_day && eating_cake) {
  console.log(reverse("!renniw"));
} else if (good_day && !eating_cake) {
  console.log(reverse("ybbahs oot ton"))
} else {
  console.log(reverse("deb ot kcab og tsuj"))
}