#create empty hash
#prompts user for client's information
puts "Welcome to the Client Database."
client_info = {}

# => name(string)
# => stores info in a hash
puts "Client's name?"
client_info[:name] = gets.chop.downcase

# => age (int)
puts "Client's age?"
client_info[:age] = gets.to_i

# => number of children (int)
puts "Number of children?"
client_info[:children] = gets.to_i

# => decor theme (string)
puts "Preferred decor theme?"
client_info[:theme] = gets.chomp.downcase

# => housesold pets (boolean)
puts "Household pets? (y/n)"
pets = gets.chomp.downcase
	if pets == "y"
		client_info[:pets] = "true"
	else
		client_info[:pets] = "false"
	end

#prints the info to the user
puts client_info

#asks user if there is any info that needs to updated
puts "Does the above information need updating? (y/n)"
update = gets.chomp

#allow user to update information as needed
if update == "y"
	puts "What field do you need to update? Please enter either: name, age, children, theme or pets."
	field = gets.chomp

	if field == "name"
		puts "Client's name?"
		client_info[:name] = gets.chop.downcase
	elsif field == "age"
		puts "Client's age?"
		client_info[:age] = gets.to_i
	elsif field == "children"
		puts "Number of children?"
		client_info[:children] = gets.to_i
	elsif field == "theme"
		puts "Preferred decor theme?"
		client_info[:theme] = gets.chomp.downcase
	elsif field == "pets"
		pets = gets.chomp.downcase
		if pets == "y"
			client_info[:pets] = "true"
		else
			client_info[:pets] = "false"
		end
	else
		puts "I didn't undersand you. Please try again."
	end

# => if user enters 'none' skip to:
elsif update == "n"
	puts "Exiting update."
else
	puts "I didn't undersand you. Please try again."
end

#print the lastest version of the client's info
puts
puts "CLIENT INFORMATION:"
puts "Name: " + client_info[:name].capitalize
puts "Age: " + client_info[:age].to_s
puts "Number of children in household: " + client_info[:children].to_s
puts "Prefered decor theme: " + client_info[:theme].capitalize
puts "Household pets? " + client_info[:pets].to_s

#exit program
puts
puts "Thank you for using the Client Database!"


