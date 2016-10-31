puts "What is your name?"
name = gets.chomp

if name == "Drake Cula" "Tu Fang"
	name = false
else
	name = true
end

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

if name = false
	puts "Definitely a vampire."
 elsif birth_age && (garlic_bread || insurance)
	puts "Probably not a vampire."
elsif birth_age && (garlic_bread || insurance)
	puts "Probably a vampire."
elsif birth_age && garlic_bread && insurance
	puts "Almost certainly a vampire."

else
	puts "Results inconclusive."
end

