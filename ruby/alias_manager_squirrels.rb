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
			v_ltr = vowels.index(vowel[i])
			v_ltr += 1
			vowel[i] = vowels[v_ltr]
			i += 1
		end
   return vowel
end


def next_consonant(consonant)
	i = 0
	consonants = "bcdfghjklmnpqrstvwxyz"
		while i < consonant.length
			c_ltr = consonant.index(consonant[i])
			c_ltr += 1
			consonant[i] = consonants[c_ltr]
			i += 1
		end
	return consonant
end

#next_vowel('a')
#next_consonant('b')

#def name_switch(real_name)
#	name_flip = real_name.downcase.split(' ')
#	name_flip.reverse_each { |i| print i, '' }
##	letters = name_flip.to_s.split('')
#end

def alias_generator(name)
vowels = "aeiou"
consonants = "bcdfghjklmnpqrstvwxyz"
new_name = []
  name.downcase.each_char do |ltr|
  	if vowels.include?(ltr)
  		new_name << next_vowel(ltr)
  	else consonants.include?(ltr)
  		new_name << next_consonant(ltr)
  	end
  end
new_name.join
end

p alias_generator("Felicia Torres") # => "Vussit Gimodoe"



