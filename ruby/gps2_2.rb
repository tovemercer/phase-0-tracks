# Method to create a list (we decided to use a hash)
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
  # define our hash that we'll use as our grocery list
  # split our input string into list of words (item names)
  # set default quantity
  # iterate through the list of names: for each name =>
  # add the item name to our hash with a default quantity
  # print the list to the console
# output: hash

def create_list(items)
  grocery_list = {}
  items_arr = items.split(" ")
#  quantity = 1
  items_arr.each do |item_name|
    add_item(grocery_list, item_name)
#    grocery_list[item_name] = quantity
  end
return grocery_list
end

#driver code:
#create_list("apples bananas oranges")


# Method to add an item to a list
# input: list, item name, and optional quantity
# steps:
  # add item to the list with the quantity (if no quantity is passed in, set it to a default)
  # print list
# output: list

def add_item(grocery_list, item_name, quantity = 1)
  grocery_list[item_name] = quantity
  return grocery_list
end

#driver code:
#grocery_list = create_list("apples bananas oranges")
#add_item(grocery_list, "grapes", 14)
#add_item(grocery_list, "cookies")
#puts grocery_list

# Method to remove an item from the list
# input: list, item, optional_quantity ###removed quantity from input
# steps:
  # if existing quantity is greater than optional_quantity
  # update item quantity by -optional_quantity
###I decided to remove this step. 
###If the user wants to update the quantity of an item the update item method should be ran. 
###This method is purly for removing an item regaurdless of quantity.
  # if existing quantity is optional_quantity
  # remove the item
# output: list

def remove_item(grocery_list, item_name)
    grocery_list.delete(item_name)
  return grocery_list
end

#driver code:
#remove_item(grocery_list, "oranges")
#puts grocery_list
    

# Method to update the quantity of an item
# input: list, item, quantity
# steps:
  # set the item to our passed-in quantity
# output: list

def update_item(grocery_list, item_name, quantity)
  grocery_list[item_name] = quantity
  return grocery_list
end

#driver code:
#update_item(grocery_list, "grapes", 4)
#puts grocery_list

# Method to print a list and make it look pretty
# input: list
# steps:
  # iterate through the list: for each key-value pair =>
  # puts "I need {quantity} {item}."
# output: list

def print_list(grocery_list)
  grocery_list.each do |item_name, quantity|
    puts "#{quantity} #{item_name}"
  end
  return grocery_list
end


grocery_list = create_list(" ")
add_item(grocery_list, "Lemonade", 2)
add_item(grocery_list, "Tomatoes", 3)
add_item(grocery_list, "Onion")
add_item(grocery_list, "Ice Cream", 4)
remove_item(grocery_list, "Lemonade")
update_item(grocery_list, "Ice Cream", 1)
puts print_list(grocery_list)

#What did you learn about pseudocode from working on this challenge?
#having the outline was really helpful. it provided direction, i usually feel pretty lost when trying to pseudocode.
#i plan on using a simular format when pseudocoding; what i was doing looked nothing like that!

#What are the tradeoffs of using arrays and hashes for this challenge?
#using a hash for this challenge seemed like the best option since we needed to include quantities.
#with an array we could have created a list but not quantities. it's much cleaner looking and more thoughful to have the quantites in there.

#What does a method return?
#a method will return nil unless you include 'return' in your code.

#What kind of things can you pass into methods as arguments?
#required arguments, arguments with default values, optional arguments

#How can you pass information between methods?
#through hashes and arrays.

#What concepts were solidified in this challenge, and what concepts are still confusing?
#definitly feeling more comfortable with hashes, methods and pseudocoding. still a little fuzzy on itteration and blocks.
