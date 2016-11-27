#create method to take input of name
#break apart the name into words
# => swap first and last name (reverse_each)
#store each word in a new array
#break apart each array into characters
# => if vowel set to iterate to the next vowel
# => if consonant, set to iterate to th next consonant
#join the characters back together
#join the words back together

def next_vowel(vowel)
	i = 0
	vowels = "aeiou"
		while i < vowel.length
			ltr = vowels.index(vowel[i])
			ltr += 1
			 vowel[i] = vowels[ltr]
			i += 1
		end
   return vowel
end


def next_consonant(consonant)
	i = 0
	consonants = "bcdfghjklmnpqrstvwxyz"
		while i < consonant.length
			ltr = consonant.index(consonant[i])
			ltr += 1
			consonant[i] = consonants[i]
			i += 1
		end
	return consonant
end

next_vowel('a')
next_consonant('b')