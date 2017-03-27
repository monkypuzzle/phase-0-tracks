function reverse(oldString) {
  var newString = ''
  for (var i=(oldString.length-1); i>=0; i--) {
    newString += oldString[i]
  }
  return newString
}

if (1==1) {
  console.log(reverse('hello'))
}
else {
  console.log("There's no equivalency!")
}