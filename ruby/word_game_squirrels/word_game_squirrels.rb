class WordGame

def initialize(game_word)
	@game_word = game_word.split("")
	@guessed_letters = []
	@guesses = game_word.length
end

def game_word(ltr)
	int = 0
	@game_word.each_index do |i|
		if @game_word[i] == ltr
			@game_word[i] = ltr
			int += 1
		end
	end
	@guessed_letters << ltr
	@guesses -= 1
	return int
end


end