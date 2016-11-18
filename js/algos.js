//RELEASE 0

//create array to store strings or phrases
var words = []

//test code:
//words.push('hello', 'from', 'the', 'otherside')
//words.push('send', 'my', 'love', 'to', 'your', 'new', 'lover')
words.push('send my love', 'hello', 'when we were young')

//sort through the phrases/words
//reorder the list from greatest length to shortest
words.sort(function(a, b) {
	return a.length < b.length;
})

//return sorted array (longest word/phase)
console.log(words)


//RELEASE 1

//function that takes 2 objects(hashes)
//compare objects to see if they share at least 1 key/value pair

//create function
//set match to false
//iterate through keys in object_1 and object_2
//if match, change match to true
var key_value = function(object_1, object_2) {
	match = false;
	for (var key_1 in object_1) {
		for (var key_2 in object_2) {
			if (key_1 === key_2 && object_1[key_1] === object_2[key_2]) {
				match = true;
			}
		}
	} 
return match
}

console.log(key_value({name: "Bob", age: 20} , {name: "Tammy" , age: 18}));
console.log(key_value({name: "Tammy", age: 20} , {name: "Tammy", age: 18}));

//RELEASE 2

