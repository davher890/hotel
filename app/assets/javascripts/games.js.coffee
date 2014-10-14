# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/


ready = ->
	$('#buttonRandom').click ->	

		numberRandom = Math.floor(Math.random() * (7 - 1) + 1)

		$('#score').text(numberRandom)

		square = $('#player_square').val()

		$('#player_square').val(parseInt(square)+parseInt(numberRandom))

		$(this).attr('disabled', true);
		$('#nextRound').removeAttr('disabled');

	$('#nextRound').click ->
		$(this).attr('disabled', true);
		$('#buttonRandom').removeAttr('disabled');

$(document).ready(ready)
$(document).on('page:load', ready)