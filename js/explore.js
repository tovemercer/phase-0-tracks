//create a function to pass in a string (hello)
//create loop to break apart the characters of the string
//reverse the order
//join the characters back together
//reversed word (olleh)

function reverse(str) {
	var result = "";
	for (var i = str.length - 1; i >= 0; i--) {
		result += str[i];
	}
//	console.log(result);
	return result
}

var driver = reverse("hello");

if (1 == 1) {
	console.log(driver)
}
