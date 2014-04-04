# starts with score zero
userScore = 0
computerScore = 0
tie = 0

# function to generate a random number within parameters
randomChoice = (min,max) ->
	return Math.floor(Math.random() * (max - min + 1)) + min;

compare = (choice1, choice2) ->
	# this renders the comparison into something useful
	result = (outcome) ->
		if outcome is 'win'
			outcome = 'You win!'
			userScore++
		if outcome is 'lose'
			outcome = 'You lose :('
			computerScore++
		if outcome is 'tie'
			outcome = 'It\'s a tie!'
			tie++
		$('#result').append('<h2>' + outcome + '</h2>')
		$('.score').empty()
		$('.user .score').append(userScore)
		$('.computer .score').append(computerScore)
		$('.tie .score').append(tie)
		return
	# comparing the selections and deciding the outcome	
	if choice1 is choice2
		result('tie')
	if choice1 is 'rock'
		if choice2 is 'paper'
			result('lose')
		if choice2 is 'scissors'
			result('win')
	if choice1 is 'paper'
		if choice2 is 'rock'
			result('win')
		if choice2 is 'scissors'
			result('lose')
	if choice1 is 'scissors'
		if choice2 is 'rock'
			result('lose')
		if choice2 is 'paper'
			result('win')
	return
	
# now, this is where the game begins
$('#selection button').click ->
	#start with a clean slate
	$('#result').empty()
	$('#selection button, .computer.column div').removeClass('selected')
	# defining the computer choice
	computerChoice = randomChoice(1,3)
	if computerChoice is 1
		computerChoice = 'rock'
	if computerChoice is 2
		computerChoice = 'paper'
	if computerChoice is 3
		computerChoice = 'scissors'
	# defining the user choice
	userChoice = $(this).attr('class')
	# running all the results and displaying them on the page
	$('#result').append('<p> You chose ' + userChoice + '. The computer chose ' + computerChoice + '.</p>')
	compare(userChoice, computerChoice)
	# displaying the choices graphically
	$('#selection button.'+userChoice).addClass('selected')
	$('.computer.column div.'+computerChoice).addClass('selected')
	return
	