require_relative 'word_game_squirrels'

describe WordGame do
	let(:game) { WordGame.new("snow") }

	it "takes a guess and returns boolean if letter is in the word" do
		expect(game.game_word("w")).to eq 1
		expect(game.game_word("a")).to eq 0
	end

	it "subtracts one guess from the word length" do
		expect(game.player_guess("n")).to eq 3
	end
	
	it "checks to see is the letter has already been guesses" do
		expect(game.previous_guess("l")).to eq false
		game.game_word("l")
		expect(game.previous_guess("l")).to eq true
	end
	
	it "if gameboard is equal to game word, returns winner" do
		expect(game.winner).to eq false
		game.game_word("s")
		game.game_word("n")
		game.game_word("o")
		game.game_word("w")
		expect(game.winner).to eq true
	end

end