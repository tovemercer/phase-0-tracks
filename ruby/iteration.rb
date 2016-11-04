#Release 0: Explore Blocks

	def status 
		puts "This exercise is fun!"
		yield("Bill", "Tova")
	end

	status { |name1, name2| puts "It is being done by #{name1} and #{name2}. :)"}

#Release 1: Use each, map, and map!

	letters = { "0" => "q", "1" => "w", "2" => "e", "3" => "r", "4" => "t", "5"=> "y"}
	numbers = [ "1", "2", "3", "4", "5", "6"]

	#Hash iteration with .each
		puts "Before call on letters hash."
		puts letters 

		letters.each do |digit, letter|
			puts "We have arbitrarily assigned the letter #{letter} to the number #{digit}."
		end

		puts "After call on letters hash."
		puts letters

	#Array iteration with .each
		puts "Before call on numbers array."
		puts numbers

		#Doing the iteration.
		numbers.each do |number|
			number
		end

		puts "After the call on the numbers array."
		puts numbers

	#Array interation with .map!

		puts "Before .map! call on numbers array."
		puts numbers

		numbers.map! do |number|
			number.next
		end

		puts "After .map! call on numbers array."
		puts numbers

#Release 2: Use the documentation
	
	#Array Example
		random = [25, 6, 10, 2, 41, 7]

		puts "Array before deletion."
		puts random
		
		random.delete_if { |x| x < 20 }
		
		puts "Array after deletion"
		puts random

	#Hash Example
		hash_list = {
			"q" => 70,
			"w" => 60,
			"e" => 200,
			"r" => 100,
			"t" => 38,
			"y" => 321
			}

		puts "Hash before rejection."
		puts hash_list

		reject_hash = hash_list.reject{|a, h| a < "r"} 

		puts "Reject hash after rejection."
		puts reject_hash