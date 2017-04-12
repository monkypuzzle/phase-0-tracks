console.log("The script is running!")

var fp = document.getElementById("first-paragraph");

fp.onmouseover = function() {
  fp.style.backgroundColor = 'mediumseagreen';
};

fp.onmouseout = function() {
  fp.style.backgroundColor = 'cornflowerblue';
}



var btn = document.getElementById("content-button");

var contBox = document.getElementById("content-box");

btn.onclick = function() {
  contBox.innerHTML += "<p>Check out this awesome content!</p>";
};