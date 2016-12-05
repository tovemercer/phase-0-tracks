require_relative 'word_game_squirrels'

describe WordGame do
	let(:game) { WordGame.new("snow") }

it "adds the guessed letter to guessed letter array" do
	game.game_word("g")
	expect(game.guessed_letter).to include ("g")
end

it "takes a guess and returns index if letter is in the word" do
	expect(game.game_word("w")).to eq 3 #failed
end

# this one passed!
it "checks to see is the letter has already been guesses" do
	expect(game.previous_guess("l")).to eq false
	game.game_word("l")
	expect(game.previous_guess("l")).to eq true
end

it "if gameboard is equal to game word, returns winner" do
	expect(game.winner("hello")).to eq false #passed
	expect(game.winner("snow")).to eq true #failed
end

#game_word
#player_guess
#winner

end