
// Code
// Release 0 - Find the longest phrase

function findLongestPhrase(array) {
  var longestPhrase = '';
  for (i=0; i<=(array.length-1); i++) {
    if (array[i].length > longestPhrase.length) {
      longestPhrase = array[i];
    }
  }
  return longestPhrase
}

// Release 1 - Find a key-value match

function hasLike(obj1, obj2) {
  obj1Keys = Object.keys(obj1);
  obj2Keys = Object.keys(obj2);
  likeKeys = [];
  hasLikePair = false;
  for (i=0; i < obj1Keys.length; i++) {
    if (obj2Keys.indexOf(obj1Keys[i]) !== null) {
      likeKeys.push(obj1Keys[i]);
    }
  }
  for (i=0; i<likeKeys.length; i++) {
    currentKey = likeKeys[i]
      if (obj1[currentKey] == obj2[currentKey]) {
      hasLikePair = true
    }
  }
  return hasLikePair
}

// Release 2 - Generate Random Test Data



// Testing
// Release 0 - Find the longest phrase

// if (findLongestPhrase(["long phrase", "longest phrase", "longer phrase"]) == 'longest phrase') {
//   console.log('It worked!')
// }
// else {
//   console.log("It didn't work :(.")
// }
// console.log(findLongestPhrase(["phrase", "longer phrase", "an even longer phrase", "the longest phrase you could imagine"]))
// console.log(findLongestPhrase(["elephants elephants pink elephants", "just one elephant", "elephant", "a few elephants elephants"]))

// Release 1 - Find a key-value match

console.log(hasLike({name: "Steven", age: 54}, {name: "Tamir", age: 54}))
console.log(hasLike({name: "Steven", age: 40}, {name: "Tamir", age: 54}))

// Release 2 - 
