# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

host_type_changed = ->
  selected_host_type = $("#host-type-select option").filter(':selected')
    .text().replace /^\s+|\s+$/g, ""
  $.ajax '/datasets/host_type_changed',
    type: "GET",
    data:
      host_type : selected_host_type

$(document).on 'ready' , ->
  $("#host-type-select").change ->
    host_type_changed()

  $("#host-type-select").on 'load' ,  ->
    host_type_changed()

