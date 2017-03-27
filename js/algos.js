
// Release 0 - Find the longest phrase

function findLongestPhrase (array) {
  var longestPhrase = '';
  for (i=0; i<=(array.length-1); i++) {
    if (array[i].length > longestPhrase.length) {
      longestPhrase = array[i];
    }
  }
  return longestPhrase
}

// if (findLongestPhrase(["long phrase", "longest phrase", "longer phrase"]) == 'longest phrase') {
//   console.log('It worked!')
// }
// else {
//   console.log("It didn't work :(.")
// }

// console.log(findLongestPhrase(["phrase", "longer phrase", "an even longer phrase", "the longest phrase you could imagine"]))

// console.log(findLongestPhrase(["elephants elephants pink elephants", "just one elephant", "elephant", "a few elephants elephants"]))


// Release 1 - Find a key-value match


