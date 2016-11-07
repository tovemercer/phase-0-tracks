#ask the user for thier name
#takes the name and swaps the first and last name
#if a vowels ('aeiou') 
	#converts them into the next vowel
#if consonants 
	#changes them into the next consonant in the alphabet

puts "What is your first and last name?"
real_name = gets.chomp

name_reorder = real_name.downcase.split(' ')
order = [1, 0]
order.map!{|x| name_reorder[x]}

p name_reorder




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