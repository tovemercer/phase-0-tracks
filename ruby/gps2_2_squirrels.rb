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