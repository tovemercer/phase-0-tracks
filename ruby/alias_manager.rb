#ask the user for thier name
#takes the name and swaps the first and last name
#if a vowels ('aeiou') 
	#converts them into the next vowel
#if consonants 
	#changes them into the next consonant in the alphabet

puts "What is your first and last name?"
real_name = gets.chomp

name_reorder = real_name.downcase.split('')
#shuffle_name = name_reorder.shuffle
#p shuffle_name.join
#shuffle_name.class
agent_name = name_reorder.map! {|x| x + "a"}
p agent_name.join
#new_alais = agent_name
#puts new_alais





def change_letters(name)
	letters = "abcdefghijklmnopqrstuvwxyz".split("")
	#letters = ["a", "e", "i", "o", "u"]
	#next_letter = []
	
	letters.map! do |letters|
		letters.next
	end
#p letters
end

#p letters

puts "What is your first and last name? Or type 'exit' to leave the program."
real_name = gets.chomp

loop do
	if real_name == "exit"
		break
	elsif real_name == ""
		puts "Invalid entry. Please enter your first and last name or type 'exit' to leave the program."
	else
		p change_letters(real_name).join
	end
end

		