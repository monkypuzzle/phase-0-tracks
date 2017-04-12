console.log("The script is running!");

$(document).ready(function() {

  $('p').css({
    color:'red',
    lineHeight:'1.2em'
  });

});

$(document).ready(function(){

  $('.paragraphs').on('mouseover', function(){
    var paragraphId = $(this)
    $(paragraphId).slideToggle(1000).show(1000);
  });

});

$(document).ready(function(){

  var divHtml = '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Minus debitis, illo, incidunt eligendi suscipit nesciunt dolorum non, quidem deleniti blanditiis delectus quae dolor sed cumque. Fuga animi omnis eligendi odit.</p>'

  $('li').filter(':nth-child(2)').on('click', function(){
    $('#div-bottom').html(divHtml)
  });

});