$(document).ready ->
  $('.alert').hide()

  $('#services-menu').waypoint 'sticky'
  $('#services-menu li').on 'click', (event) ->
    event.preventDefault()
    element = $(event.target).attr('href')
    $('html, body').animate { scrollTop: $(element).offset().top - 50 }, 1000

  $('.nav a').on 'click', () ->
    $(".navbar-toggle").click()

  $('.back-to-top').on 'click', (event) ->
    event.preventDefault()
    element = $(event.target).attr('href')
    $('html, body').animate { scrollTop: 50 }, 1000

  $('#to-footer').on 'click', (event) ->
    event.preventDefault()
    $('html, body').animate { scrollTop: $('#footer').offset().top }, 1000

  $(window).scroll ->
    y = $(window).scrollTop()

    if y > $(window).height()
      $('.back-to-top img').fadeIn 'slow'
    else
      $('.back-to-top img').fadeOut 'slow'

  $ ->
    navMain = $('.navbar-collapse')
    navMain.on 'click', 'a', null, ->
      navMain.collapse 'hide'
