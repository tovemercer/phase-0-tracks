class TodoList

def initialize(list_arr)
	@todo_arr = list_arr
end

def get_items
	@todo_arr
end

def add_item(item)
	@todo_arr << item
end

def delete_item(item)
	@todo_arr.delete(item)
end

def get_item(index)
	@todo_arr [index]
end

end