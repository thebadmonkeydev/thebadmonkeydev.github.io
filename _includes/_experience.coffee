$(document).ready ->
  selector = '.block'
  window.standardizeHeight(selector)

  $(window).resize ->
    window.standardizeHeight(selector)

  $(window).scroll ->
    window.standardizeHeight(selector)

window.standardizeHeight = (selector) ->
  elements = $(selector)
  largest = 0

  elements.each ()->
    height = $(this).height()

    if height > largest
      largest = height

  elements.height(largest)

