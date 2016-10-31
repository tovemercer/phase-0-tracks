puts "How many applicants do you have today?"
applicants = gets.to_i



until applicants == 0
	puts "What is your name?"
	name = gets.chomp
	
	puts "How old are you?"
	age = gets.to_i
	
	puts "What year where you born?"
	birth_year = gets.to_i
	
	current_year = 2016
	birth_age = current_year - birth_year
	
	if birth_age == age
		birth_age = true
	else
		birth_age = false
	end
	
	puts "Do you like garlic bread? (y/n)"
	garlic_bread = gets.chomp
	
	if garlic_bread == "y"
		garlic_bread = true
	elsif garlic_bread == "n"
		garlic_bread = false
	else
		puts "Please put y or n"
	end
	
	puts "Will you enroll in health insurance? (y/n)"
	insurance = gets.chomp
	
	if insurance == "y"
		insurance = true
	elsif insurance == "n"
		insurance = false
	else
		puts "Please put y or n"
	end
	
	ailment = 0
	while ailment == 0
	puts "Please list any allergies you may have, one at a time. When finished (or if you don't have any) please type 'done'."
	allergies = gets.chomp
		if allergies == "sunshine"
			puts "Probably a vampire."
			ailment += 1
		elsif allergies == "done"
			puts "Thank you."
			ailment += 1
		end
	end
	
			
	case
	when name == "Drake Cula", name == "Tu Fang"
		puts "Definitely a vampire."
	when birth_age == false && garlic_bread == false && insurance == false
		puts "Almost certainly a vampire."
	when birth_age == true && (garlic_bread == true || insurance == true)
		puts "Probably not a vampire."
	when birth_age == false && (garlic_bread == false || insurance == false)
		puts "Probably a vampire."
	else puts "Results inconclusive."
	end

applicants -= 1

end
