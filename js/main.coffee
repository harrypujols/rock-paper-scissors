randomChoice = (min,max) ->
	return Math.floor(Math.random() * (max - min + 1)) + min;

compare = (choice1, choice2) ->
	result = (outcome) ->
		if outcome == 'win'
			outcome = 'You win!'
		if outcome == 'lose'
			outcome = 'You lose :('
		if outcome == 'tie'
			outcome = 'It\'s a tie!'
		$('#result').append('<h2>' + outcome + '</h2>')
		return
		
	if choice1 == choice2
		result('tie')
	if choice1 == 'rock'
		if choice2 == 'paper'
			result('lose')
		if choice2 == 'scissors'
			result('win')
	if choice1 == 'paper'
		if choice2 == 'rock'
			result('win')
		if choice2 == 'scissors'
			result('lose')
	if choice1 == 'scissors'
		if choice2 == 'rock'
			result('lose')
		if choice2 == 'paper'
			result('win')
	return

$('#selection button').click ->

	computerChoice = randomChoice(1,3)
	if computerChoice == 1
		computerChoice = 'rock'
	if computerChoice == 2
		computerChoice = 'paper'
	if computerChoice == 3
		computerChoice = 'scissors'
	
	userChoice = $(this).attr('class')
	
	$('#result').empty()
	$('#result').append('<p> You chose ' + userChoice + '. The computer chose ' + computerChoice + '.</p>')
	compare(userChoice, computerChoice)
	return
	
	