# Method to create a list
# input: string of items separated by spaces, set default quantity (example: "carrots apples cereal pizza")
#steps: 
  # create hash
  # split the string to get items
  # loop through items to add to hash
  # print the list to the console [can you use one of your other methods here?]
# output: list(hash)



def create_list(item, quantity = 1)
	list = {}
	split_item = item.split(" ")
	split_item.each do |item_name|
		list[item_name] = quantity
	end
	return list
end

# Method to add an item to a list
# input: list, item, quantity
# steps: add the item to the list
# output: list

def add_item (list, item, quantity = 1)
	list[item] = quantity
	return list
end

# Method to remove an item from the list
# input:list, item
# steps:delete the item from the list
# output: list

def delete_item(list, item)
	list.delete(item)
	return list
end

# Method to update the quantity of an item
# input:list, item, quantity
# steps: update list to passed in quantity
# output: list

def update_item(list, item, quantity)
	list[item] = quantity
	return list
end

# Method to print a list and make it look pretty
# input: list
# steps: iterate through list to print items and quantity
# 		 prints message to user
# output: list

def print_list(list)
	puts "----- Shopping List -----"
	list.each do |item, quantity|
		puts "#{item}: #{quantity}"
	end
	return list
end


shopping_list = create_list(" ")
add_item(shopping_list, "Lemonade", 2)
add_item(shopping_list, "Tomatoes", 3)
add_item(shopping_list, "Onion")
add_item(shopping_list, "Ice Cream", 4)
delete_item(shopping_list, "Lemonade")
update_item(shopping_list, "Ice Cream", 1)
print_list(shopping_list)

=begin

What did you learn about pseudocode from working on this challenge?
it's really helpful having an outline to refer to when the problem seems overwhelming

What are the tradeoffs of using arrays and hashes for this challenge?
using a hash made more sense since we included the quantities for each item.
with an array we would have just been able to create the lsit. it's much cleaner
with the hash as well as better organized.

What does a method return?
the last line of code written in the method. including 'return' lets you choose
what is returned

What kind of things can you pass into methods as arguments?
required arguments, arguments with default values, optional arguments

How can you pass information between methods?
with hashs and array (still trying to wrapmy head around this one!)

What concepts were solidified in this challenge, and what concepts are still confusing?
i feel more confident with hashes, pseudocoding and iterating. 
i am still trying to understand working with multiple methods and how to link
those together with hashes and arrays.

=end
