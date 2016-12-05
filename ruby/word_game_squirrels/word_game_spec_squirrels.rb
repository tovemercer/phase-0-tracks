require_relative 'word_game_squirrels'

describe WordGame do
	let(:game) { WordGame.new("snow") }

it "takes a guess and returns boolean if letter is in the word" do
	expect(game.game_word("w")).to eq 1
end

end