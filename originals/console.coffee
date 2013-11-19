game = ->
	input = prompt 'rock, paper or scissors?'
	until input is 'rock' or input is 'paper' or input is 'scissors'
		alert 'you must choose rock, paper or scissors, dumbass'
		input = prompt 'rock, paper or scissors?'
	alert 'you chose ' + input