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


//RELEASE 2

//function that takes an integer for a length
//builds and returns an array of strings of the given length
//  argument of 3 is entered, returns a random array of 3 words
//  returned words should be a varying length (min 1, max 10)
//driver code to test 10 times
//  generates array
//  prints array
//  feeds array into 'longest word' function
//  prints result

var random_word = function(number) {
  var word = "";
  var possible = "abcdefghijklmnopqrstuvwxyz";
  for (var i = 0; i < number; i++) {
    word += possible.charAt(Math.floor(Math.random() * possible.length));
  }
  return word;
}

//console.log(random_word(5))

const times = n=> f=> {
  let iter = i=> {
    if (i === n) return
    f (i)
    iter (i + 1)
  }
  return iter (0)
}

times (10) (i=> console.log(random_word(3)))


