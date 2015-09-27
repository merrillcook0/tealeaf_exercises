



CHOICES = {'p'=>'paper','r'=>'rock','s'=>'scissors'}


puts 'welcome to rock paper scissors'



loop do
	def display_winning_message(human, computer, win_or_lose)
		if win_or_lose == "win"
			puts "you chose #{human} and the computer chose #{computer} you won!"
		elsif win_or_lose =="lose"
			puts "you chose #{human} and the computer chose #{computer} you lost!"
		else
			puts "you chose #{human} and the computer chose #{computer}, you tied!"

		end 
	end
	
	#inner loop doesn't stop until player chooses a valid key from CHOICES constant
	begin
	puts 'return R/P/S for your choice'
	player_choice = gets.chomp.downcase
	end until CHOICES.keys.include?(player_choice)

	puts 'you picked correctly'

	computer_choice = CHOICES.keys.sample

	if player_choice == computer_choice
		display_winning_message(player_choice, computer_choice, "tie")

		#if player wins
	elsif player_choice == 'p' && computer_choice == 'r' || player_choice== 'r' && computer_choice == 's' || player_choice=='s' and computer_choice=='p'
		
		display_winning_message(player_choice,computer_choice, "win")
		#if player loses
	else
		display_winning_message(player_choice,computer_choice,"lose")

	end

	puts "would you like to play again? Y or N."
	restart = gets.chomp.downcase
	if restart == "n"
		break
	end



end





