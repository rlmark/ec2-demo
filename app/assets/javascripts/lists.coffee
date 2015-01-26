# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/


$ ->
  $(".delete").click ->
    $el = $(this)
    id = $el.data("id")
    $.ajax("/lists/" + id, {
      type: "DELETE"})
    .success (data) ->
      $el.parents("li").remove()
    false
