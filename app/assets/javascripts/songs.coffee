# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
  $("a#show").click (e) ->
    console.log("click")
    $("div#form_song").toggle(1000);

$(document).ready ->
  $("div#form_song").hide();
