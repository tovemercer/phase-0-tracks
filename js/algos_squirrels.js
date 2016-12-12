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


//RELEASE 1

//function that takes 2 objects(hashes)
//compare objects to see if they share at least 1 key/value pair

//create function
//set match to false
//iterate through keys in object_1 and object_2
//if match, change match to true
var keyValue = function(object_1, object_2) {
  match = false;
  for (var key in object_1) {
    if(object_1[key] == object_2[key]) {
      return true
    }
  } 
return match
}

console.log(keyValue({name: "Steven", age: 54} , {name: "Tamir" , age: 54}));
console.log(keyValue({name: "Steven", age: 45} , {name: "Tamir", age: 54}));
