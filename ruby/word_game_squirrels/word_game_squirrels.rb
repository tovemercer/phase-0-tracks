class WordGame
	attr_reader :guesses, :gameborad, :guessed_letters
	attr_accessor :game_word

	def initialize(game_word)
		@game_word = game_word.split("")
		@guesses = game_word.length
		@gameborad = Array.new(game_word.length) {" _ "}
		@guessed_letters = []
	end

	def game_word(ltr)
		int = 0
		@game_word.each_index do |i|
			if @game_word[i] == ltr
				@gameborad[i] = ltr
				int += 1
			end
		end
		player_guess(ltr)
		return int
	end

  	def player_guess(ltr)
		@guessed_letters << ltr
		@guesses -= 1
	end

	def previous_guess(ltr)
		@guessed_letters.include? ltr
	end

	def winner(guess = "")
		@winner = (@gameborad == @game_word)
	end

end

# USER INTERFACE ##
#puts "Welcome to the Word Game!"
#puts "Here's how it works... Player 1 enters a word for Player 2 to guess." 
#puts "Easy enough, right? Let's get started!"
#puts "\nPlayer 1, enter a word."
#game_word = gets.chomp.downcase
#game = WordGame.new(game_word)
#
#puts "\nPlayer 2, you have #{game.guesses} chances to guess Player 1's word. Good Luck!"
#puts "Guess this word: #{game.gameborad.join}"
#puts "\nPlease enter your first letter."
#
#while game.guesses > 0
#	guess = gets.chomp.downcase
#
#		if game.previous_guess(guess)
#			puts "You've already tried that one... Enter a new letter."
#			guess = gets.chomp.downcase
#		end
#
#	gameboard_update = game.game_word(guess)
#	correct_guess = gameboard_update > 0
#
#		if game.gameborad.include? guess
#			puts "Good guess!"
#			puts "You have #{game.guesses} guesses left."
#			puts game.gameborad.join
#		else
#			puts "Better try again..."
#			puts "You have #{game.guesses} guesses left."
#			puts game.gameborad.join
#		end
## can't figure out how to make these only display when the game is over
#		if game.winner
#			puts "You guessed the word, hooray!!! Your mother must be very proud."
#			break
#		else !game.winner
#			puts "Well... Better luck next time."
#		end
#
#end
