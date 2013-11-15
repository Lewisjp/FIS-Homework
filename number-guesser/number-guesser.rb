	# tell the user if they are getter warmer or colder depending on if their newest guess is closer or further from the answer than their last guess

def answer_temp(guess, answer)
	temp = (guess - answer).abs	
	if temp < 10
		puts "You're so close you're on fire."
	else
		if temp < 20
			puts "You're hot."
		else
			if temp < 30 
				puts "You're getting warmer."
			else
				if temp < 50
					puts "It feels too warm to wear a jacker, but too cold to wear a t-shirt."
				else
					if temp < 80
						puts "Is it just me, or are you cold?"
					else
						if temp < 100
							puts "You must be freezing."
						end
					end
				end
			end
		end
	end
end 

	# Tell the user if they were correct or incorrect

def prompt(guess, answer, tried_again)

	if guess == answer

		# if a user wins give them the option to play the game again

		puts "Congratulations!  You chose wisely" 
		puts "Would you like to play again? Yes or No?"
			tried_again = false
			answer_2 = gets.chomp.downcase
			case answer_2
				when "yes" then start_game(tried_again)
				when "y" then start_game(tried_again)
				else
					return true
			end
	else

		# tell the user if their guess  are 'higher' or 'lower' than the correct number

		if guess > answer 
			puts "You chose too high with #{guess}."
			if tried_again == true 
				answer_temp(guess, answer)
			end
		else
			puts "You chose too low with #{guess}."
			if tried_again == true 
				answer_temp(guess, answer)
			end
		end

		# give them the option to play the game again

		puts "Would you like to try again? Yes or No?"
			tried_again = true
			answer_2 = gets.chomp.downcase
			case answer_2
				when "yes" then input(answer, tried_again)
				when "y" then input(answer, tried_again)
				else
					return false
			end
	end

end


	# Should ask the user to enter a number between 1 and 100
	# receive input from the user

def input(answer, tried_again)

	puts "\nGuess a number between 1 and 100 correctly."
	guess = gets.chomp.to_i

	if guess < 101 && guess > 0 
		prompt(guess, answer, tried_again)
	else
		puts "The cowboy with wise old eyes sighs.. you lost your chance for free admission." 
		return false
	end


end


def start_game(tried_again)
	answer = rand(99) + 1
	puts "While camping in the velvet darkness of the blackest night, you suddenly see a guiding light.  After walking along the river you begin to hear music, and once over the hill see the carnival.  At the entrance stands an older man in a cowboy hat.\nHe looks up from the ground to meet your eyes...\nAdmission is free if you..."

	input(answer, tried_again)
end

tried_again = false 

start_game(tried_again)
