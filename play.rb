def run
	input = ""
	until input == "quit"
		puts "rock, paper or scissors?"
		input = gets.chomp
		until input == "rock" || input == "paper" || input == "scissors" || input == "quit"
			puts "that's not rock, paper or scissors"
			input = gets.chomp
		end
		if (input != "quit")
		#define computer's choice
			computer = rand(3)
			#converts computer's random number to a choice
			case computer
				when computer = 1
					computer = "rock"
				when computer = 2
					computer = "paper"
				else
					computer = "scissors"
			end
			#displays the choices of each
			puts "the computer chooses #{computer}"
			puts "you chose #{input}"
			#starts the compare function
			def compare(choice1,choice2)
			#to display the winner
				win = "you win!"
				lose = "you lose :("
			#if it's a tie
				if (choice1 == choice2)
					puts "it's a tie!"
				end
			#conditionals	
				if (choice1 == "rock")
					if (choice2 == "paper")
						puts lose
					end
					if (choice2 == "scissors")
						puts win
					end
			    end
			    if (choice1 == "paper")
					if (choice2 == "rock")
						puts win
					end
					if (choice2 == "scissors")
						puts lose
					end
			    end
			    if (choice1 == "scissors")
					if (choice2 == "rock")
						puts lose
					end
					if (choice2 == "paper")
						puts win
					end
			    end
			  #end conditionals  
			 end
			 #executes function
			compare(input, computer)			
			#ends the compare function
		end
		puts " "
	end
	return "Ok"
end

run()