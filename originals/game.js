/**
 * Returns a random integer between min and max
 * Using Math.round() will give you a non-uniform distribution!
 */
function randomNum (min, max) {
    return Math.floor(Math.random() * (max - min + 1)) + min;
}


//compare

function compare(choice1, choice2) {
	
	if (choice1 == choice2) {
		result('tie');
	}
	
	if (choice1 == 'rock') {
		
		if (choice2 == 'paper') {
			result('lose');
		}
		
		if (choice2 == 'scissors') {
			result('win');
		}
	}
	
	if (choice1 == 'paper') {
		
		if (choice2 == 'rock') {
			result('win');
		}
		
		if (choice2 == 'scissors') {
			result('lose');
		}
	}
	
	if (choice1 == 'scissors') {
		
		if (choice2 == 'rock') {
			result('lose');
		}
		
		if (choice2 == 'paper') {
			result('win');
		}
	}
	
	//prints result on page
	
	function result(outcome) {

		if (outcome == 'win') {
			outcome = 'You win!';
		}
		
		if (outcome == 'lose') {
			outcome = 'You lose :(';
		}
		
		if (outcome == 'tie') {
			outcome = 'It\'s a tie!';
		}
		
		$('#result').append('<h2>' + outcome + '</h2>');
	}
}

// the game begins

$('#selection button').click(function(){
	
	// computer choice
	var computerChoice = randomNum (1, 3);
	
	if (computerChoice == 1) {
	    computerChoice = 'rock';
	}
	
	else if (computerChoice == 2) {
	    computerChoice = 'paper';
	}
	
	else if (computerChoice == 3) {
	    computerChoice = 'scissors';
	}
	
	// user choice
	userChoice = $(this).attr('class');
	
	// the result
	$('#result').empty();
	$('#result').append('<p> You chose ' + userChoice + '. The computer chose ' + computerChoice + '</p>');
	compare(userChoice, computerChoice);
});

 