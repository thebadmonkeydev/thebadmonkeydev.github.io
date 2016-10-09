$(document).ready ->
  window.checkNav()

  $(window).scroll ->
    window.checkNav()

window.checkNav = ()->
  element = $('.as-nav')
  introduction = $('.introduction')

  windowTopToPageTop = $(window).scrollTop()
  breakpoint = introduction.height()*0.75

  if windowTopToPageTop < breakpoint
    element.removeClass 'js-fade-element-show'
    element.addClass 'js-fade-element-hide'
  else
    if windowTopToPageTop >= breakpoint
      element.removeClass 'js-fade-element-hide'
      element.addClass 'js-fade-element-show'

