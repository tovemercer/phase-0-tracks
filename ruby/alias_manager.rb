#ask the user for thier name
#takes the name and swaps the first and last name
#chnages the vowels in the name to the next vowel in 'aeiou'
 #changes the consonants to the next consonant in the alphabet

puts "What is your first and last name?"
real_name = gets.chomp

name_reorder = real_name.downcase.split(' ')
order = [1, 0]
order.map!{|x| name_reorder[x]}

p name_reorder

#def secret_name(name_reorder)
#	alphabet = "abcdefghijklmnopqrstuvwxyz"
#	i = 0
#	while i < name_reorder.length
#	find_alphabet = alphabet.index(/[aeiou]/, name_reorder[i])
#	name_reorder[i] = alphabet[find_alphabet + 1]
#	i += 1
#	end #while i
#end #secret_name