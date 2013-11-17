$(document).ready(function(){
  $('#services-menu').waypoint('sticky');

  $("#services-menu li").on('click', function(event) {
    event.preventDefault();
    var element = $(event.target).attr('href');

    $('html, body').animate({
        scrollTop: $(element).offset().top - 50
    }, 1000);
  });
});
