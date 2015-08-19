// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require underscore
//= require gmaps/google
//= require map-style
//= require waypoints
//= require waypoints-sticky
//= require jcarousel
//= require jcarousel-responsive
//= require bootstrap-sprockets
//= require_tree .

$(document).ready(function() {
  $('.more-button').on('click', function(event) {
    var element;
    event.preventDefault();
    element = $(event.target).attr('href');
    $('html, body').animate({
      scrollTop: $(element).offset().top
    }, 1000);
  });

  var handler = Gmaps.build('Google', {
      markers: { maxRandomDistance: null
    }
  });
  handler.buildMap({ provider: {
    center:      { lat: 54.35551215, lng: 18.59537959 },
    scrollwheel: false,
    mapTypeId:   google.maps.MapTypeId.ROADMAP,
    styles:      mapStyle,
    zoom:        15
  }, internal: {id: 'googleMap'}}, function(){
    markers = handler.addMarkers([
      {
        lat: 54.355457,
        lng: 18.595421
      }
    ]);
  });


});




