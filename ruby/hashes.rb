#Release 3

#Interior Design Client Program

#ask user to enter the required client details
#client details needed:
	#name, age, number of children, decor theme, pet-friendly, budget
	#make sure data type is approiate
#provide the user with a list when completed
#provide oppertunity to update data
	#if not needed, enter 'none' to skip
	#otherwise, enters a key (k) to update the appropriate key value
#print the updated information
#exit program

puts "Welcome the the Interior Design Client Program!"	
puts "Please enter the requested information below; when done type 'exit'."

puts "Client's name?"
name = gets.chomp
client_info = {
	:client_name => "name"
}

puts "Client's age?"
age = gets.chomp
client_info[:client_age] = age

puts "Number of children in household?"
children = gets.chomp
client_info[:number_of_children] = children

puts "Prefered decor theme?"
theme = gets.chomp
client_info[:decor_theme] = theme

puts "Do you have any pets? (y/n)"
pets = gets.chomp
	if pets == "y"
		client_info[:household_pets] = true
	else 
		client_info[:household_pets] = false
	end

puts "Is your budget over $5000? (y/n)"
budget = gets.chomp
	if budget == "y"
		client_info[:client_budget] = true
	else 
		client_info[:client_budget] = false
	end
	
puts client_info