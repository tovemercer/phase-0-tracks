#create method to take input of name
#break apart the name into words
# => swap first and last name (reverse_each)
#store each word in a new array
#break apart each array into characters
# => if vowel set to iterate to the next vowel
# => if consonant, set to iterate to th next consonant
#join the characters back together
#join the words back together

def next_vowel(letters)
	i = 0
	vowels = "aeiou"
		while i < letters.length
			ltr = vowels.index(letters[i])
			ltr += 1
			letters[i] = vowels[ltr]
			i += 1
		end
   return letters
end


#def next_consonant
#
#end

next_vowel('a')