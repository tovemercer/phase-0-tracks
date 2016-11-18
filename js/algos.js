//takes an array of words or phrases
//returns the longest word or phrase in the array

//create array to store strings or phrases
//	include phrases/words
//sort through the phrases/words
//reorder the list from greatest length to shortest
//return sorted array (longest word/phase)


//var words = ['hello', 'from', 'the', 'otherside']
//
//words.sort(function(a, b) {
//	return a.length < b.length;
//})
//
//
//console.log(words)


var words = []

//words.push('hello', 'from', 'the', 'otherside')
//words.push('send', 'my', 'love', 'to', 'your', 'new', 'lover')
words.push('send my love', 'hello', 'when we were young')

words.sort(function(a, b) {
	return a.length < b.length;
})

console.log(words)