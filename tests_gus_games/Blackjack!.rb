#Source: https://github.com/gustavoguimaraes/todos/tree/master/games/7491101

#Blackjack!

##Objective
#Practice contional logic including nested conditionals. 
#Use methods to keep our code DRY.

##Instructions
#We are going to build a command line blackjack game. 
#A player gets dealt two cards which have values between 1-11. 
#After they get dealt two cards you should show them the total score of their cards and ask them if they want to hit or stay. 
#A player is allowed to "hit" up to two times.
#After each hit you should ask if they want to hit or stay and display the total value of their cards. 
#If they don't want to hit, and they are not at 21 they lose. 
#Your program should tell them they lose and exit.

#Note:  To take input from the person "playing" the game your program will have to use the Ruby method "gets".

##Challenge
#After successfully completing the previous game (there should be a commit with a working version of this game), alter the game so that a player can "hit" as many times as they want.

def card
        1 + rand(11)
end
        

def blackjack
        puts "This is blackjack."
        card1 = card
        card2 = card
        total_cards = card1 + card2
        puts "Your cards are #{card1} and #{card2}. It gives you the total of #{total_cards}."

        while total_cards < 21
                        puts "Do you want to hit or stay?"
                        answer = gets.chomp
                                if answer == "hit"
                                                new_card = card 
                                                  total_cards += new_card
                                                  puts " Your new card is #{new_card} and now you have in your hand a total of #{total_cards}"
                                        else
                                        break
                                end
        end

        if         total_cards > 21
                        puts "You have more than 21 so you lose"
                elsif total_cards == 21
                        puts "You win"
                else
                        puts "You don't have 21 so you lose"
        end

end

blackjack
                  