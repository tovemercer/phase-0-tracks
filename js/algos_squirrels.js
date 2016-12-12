//RELEASE 0

//create array to store strings or phrases
var theDoors = []

//test code:
theDoors.push('people are strange', 'la woman', 'break on through', 'love me two times')

//sort through the phrases/words
//reorder the list from greatest length to shortest
theDoors.sort(function(a, b) {
  return a.length < b.length;
})

//return sorted array (longest word/phase)
console.log(theDoors)
