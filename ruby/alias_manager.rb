#ask the user for thier name
#takes the name and swaps the first and last name
#if a vowels ('aeiou') 
	#converts them into the next vowel
#if consonants 
	#changes them into the next consonant in the alphabet

puts "What is your first and last name?"
real_name = gets.chomp

name_reorder = real_name.downcase.split('')
agent_name = name_reorder.map! {|x| x + "a"}
alias_name = agent_name.join.inspect
p alias_name

##struggled big time with this challenge and spent too much time messing around with it.
##i should have time-boxed myself, but I was wanted to figure t out.
##definitly didn't think it would be this much of a challenge
##I plan on reviewing this information monday and tuesday
