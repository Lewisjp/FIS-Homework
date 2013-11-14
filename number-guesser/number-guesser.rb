
	# Tell the user if they were correct or incorrect

def prompt(guess, answer)

	if guess == answer
		puts "Congratulations!  You chose wisely" 
		return true
	else
		puts "You chose #{guess}, the answer was #{answer}.  Maybe next time." 
		return false
	end

end

	# Should ask the user to enter a number between 1 and 100
	# receive input from the user

def input

	answer = rand(10) + 1

	puts "\n\nGuess a number between 1 and 100 correctly."
	guess = gets.chomp.to_i

	if guess < 101 && guess > 0 
		prompt(guess, answer)
	else
		puts "The cowboy with wise old eyes sighs.. you lost your chance for free admission." 
		return false
	end

end

puts "While camping In the velvet darkness of the blackest night, you suddenly see a guiding light.  After walking along the river you begin to hear music, and once over the hill see the carnival.  At the entrance stands an older man in a cowboy hat.\nHe looks up from the ground to meet your eyes...\nAdmission is free if you..."

input()


