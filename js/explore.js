//declare a string (hello)
//create loop to break apart the characters of the string
//index the characters
//use zero indexing to reverse the order
//join the characters back together
//reversed word (olleh)

//var str = "Hello"
//
//for (var i = str.length; i >= 0; i-=1) {
//	console.log(str[i]);
//}


//function reverse(str) {
//	console.log(str);
//}
//
//reverse("Hello");


function reverse(str) {
	for (var i = str.length; i >= 0; i-=1)
	console.log(str[i]);
}

reverse("Hello");