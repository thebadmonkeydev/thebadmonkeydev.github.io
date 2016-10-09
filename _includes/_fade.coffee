window.processFade = ()->
  $('.fade').each( (index)->
    element = this
    elementTopToPageTop = $(element).offset().top
    windowTopToPageTop = $(window).scrollTop()
    windowInnerHeight = window.innerHeight
    elementTopToWindowTop = elementTopToPageTop - windowTopToPageTop
    elementTopToWindowBottom = windowInnerHeight - elementTopToWindowTop
    distanceFromBottomToAppear = 300

    if elementTopToWindowBottom > distanceFromBottomToAppear
      $(element).addClass 'js-fade-element-show'
    else if elementTopToWindowBottom < 0
      $(element).removeClass 'js-fade-element-show'
      $(element).addClass 'js-fade-element-hide'
  )

$(document).ready ->
  element = $('.fade')
  $(element).addClass 'js-fade-element-hide'
  window.processFade()

  $(window).scroll ->
    window.processFade()
