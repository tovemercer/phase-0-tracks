puts "What is your name?"
name = gets.chomp

puts "How old are you?"
age = gets.to_i

puts "What year where you born?"
birth_year = gets.to_i



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
	