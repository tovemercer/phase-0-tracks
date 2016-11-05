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
puts "Please enter the requested information below."

puts "Client's name?"
name = gets.chomp
client_info = {
	:client_name => name
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
	
puts "Client's name: " + client_info[:client_name]
puts "Client's age: " + client_info[:client_age]
puts "Number of children in household: " + client_info[:number_of_children]
puts "Prefered decor theme: " + client_info[:decor_theme]
puts "Household pets? " + client_info[:household_pets].to_s
puts "Budget over $5000? " + client_info[:client_budget].to_s

puts "Do you need to update any of the stored information? (y/n)"
update_information = gets.chomp

if update_information == "y"
	puts "What field would you like to update? Type: 'Name', 'Age', 'Children', 'Decor', 'Pets', 'Budget' or to exit 'none'."
		field_update = gets.chomp
		if field_update.downcase == "name"
			puts "Client's name?"
			name = gets.chomp
			client_info[:client_name] = "name"
		elsif field_update.downcase == "age"
			puts "Client's age?"
			age = gets.chomp
			client_info[:client_age] = age
		elsif field_update.downcase == "children"
			puts "Number of children in household?"
			children = gets.chomp
			client_info[:number_of_children] = children
		elsif field_update.downcase == "decor"
			puts "Prefered decor theme?"
			theme = gets.chomp
			client_info[:decor_theme] = theme
		elsif field_update.downcase == "pets"
			puts "Do you have any pets? (y/n)"
			pets = gets.chomp
				if pets == "y"
					client_info[:household_pets] = true
				else 
					client_info[:household_pets] = false
				end
		elsif field_update.downcase == "budget"
			puts "Is your budget over $5000? (y/n)"
			budget = gets.chomp
				if budget == "y"
					client_info[:client_budget] = true
				else 
					client_info[:client_budget] = false
				end
		elsif field_update.downcase == "none"
			puts "Exiting program."
			
		else 
			puts "What field would you like to update? Type: 'Name', 'Age', 'Children', 'Decor', 'Pets', 'Budget' or to exit 'none'."
		end
else 

end

puts "CLIENT INFORMATION:"
puts "Name: " + client_info[:client_name]
puts "Age: " + client_info[:client_age]
puts "Number of children in household: " + client_info[:number_of_children]
puts "Prefered decor theme: " + client_info[:decor_theme]
puts "Household pets? " + client_info[:household_pets].to_s
puts "Budget over $5000? " + client_info[:client_budget].to_s
