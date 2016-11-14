#GAME CLASS
#
#class: WordGame
#reader guess count
#reader matches
#reader game over
#
#initialize class
#word_input
#letter_guess
#guess count
#game over
#
#method to store word_input (array)
#input: word_input (string)
#steps: define the array
#	split word_input into letters
#	stores split word_input to array
#	index letters so it is know how many guesses user_2 has —iterate?
#output: array
#	 guesses_remaining module
#
#method to store letter_guess (array)
#input: word_input, lletter_guess
#steps: define array
#	stores letter_guess to array
#output:
#
#guesses_remaining module to tell user_2 how many guess left
#
#method to compare word_input and letter_guess
#input: word_input (array), letter
#steps: letter_guess (array) iterates through word_input (array)
#	-if match
#		-successful match 
#		-requests new letter
#	-if duplicate
#		-
#	-else
#		-unsuccessful match
#output: guesses_remaining module
#
#method to successful match letter_guess to word_input
#input: word_input (array), letter
#steps: letter iterates through word_input (array)
#	-either matches
#output: guesses_remaining module
#
#method to unsuccessful match letter to word_input
#input: word_input (array), letter
#steps: letter iterates through word_input (array)
#	-no match
#output: guesses_remaining module
#
#
#USER INPUT
#welcome to game message
#requests user_1 to enter word
#user_1 enters word (input)
#while game is not over:
#tells user_2 how many guesses they have (output)
#	-displays blank word; ex: “_ _ _ _ _”
#user_2 enters letter (input)
#	-if letter is in word (input)
#		-adds letter to word
#		-tells user_2 the letter has been added (output)
#		-displays word with letter filled in; ex: “_ e _ _ _” (output)
#		-tells user how many more guesses they have (output)
#		-subtracts 1 from guess count
#	-if letter is NOT in word (input)
#		-tells user_2 the letter is not in the word (output)
#		-displays word before incorrect guess; ex: “_ _ _ _ _” (output)
#		-tells user how many more guesses they have (output)
#		-subtracts 1 from guess count
#	-if letter had previously been guessed (input)
#		-tells user_2 that letter has already been guessed (output)
#		-displays word before guess; ex: “_ _ _ _ _” (output)
#		-tells user how many more guesses they have (output)
#user_2 continues entering letters (input)
#	until:
#	-the word is correctly guessed
#		-user_2 receives a congratulatory message (output)
#	-user_2 runs out of guesses
#		-user_2 receives a taunting message (output)
#game ends 
