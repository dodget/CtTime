# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).on "turbolinks:load", ->
  console.log 'hiya'
  $('#show_list').click ->
    if $('#potential_specialty_list').is(':hidden')
      $('#potential_specialty_list').slideDown()
      $('#arrow').removeClass('glyphicon glyphicon-arrow-down green').addClass('glyphicon glyphicon-arrow-up red')
    else
      $('#potential_specialty_list').hide('slow')
      $('#arrow').removeClass('glyphicon glyphicon-arrow-up red').addClass('glyphicon glyphicon-arrow-down green')
    return
  return
