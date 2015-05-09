$(document).ready ->
  $('.alert').hide()

  $('#services-menu').waypoint 'sticky'
  $('#services-menu li').on 'click', (event) ->
    event.preventDefault()
    element = $(event.target).attr('href')
    $('html, body').animate { scrollTop: $(element).offset().top - 50 }, 1000

  $ ->
    navMain = $('.navbar-collapse')
    navMain.on 'click', 'a', null, ->
      navMain.collapse 'hide'
