#Release 0
def search_array(arr, num)
	int = 0
	while int < arr.length
		if arr[int] == num
			puts int
		end #if
	int = int + 1
	end #while
end #def

arr = [3, 6, 53, 12, 37]
p search_array(arr, 12)
p search_array(arr, 14)
p search_array(arr, 3)
p search_array(arr, 6)


#Release 1
def fibb(length)
	arr = [0, 1] 
	arr.each do |number|
		if arr.length != length
			next_num = arr[-2] + arr[-1]
			arr.push(next_num)
		end #if
	end #do
end #def

fibb(100)

#How can we verify this number is correct?
#if fibb(100).index(101) == 218922995834555169026

#Release 2
def alphabet_sort(array)
    alphabet =  ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", 
    	"p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
   counter = 1
    until counter == 100

    	new_array = array.each do |letter|
    	
    		i = 1
    	    index_of_letter_in_array = array.index(letter)
    	    index_of_next_letter_in_array = index_of_letter_in_array + i 
    	    value_of_next_item_in_array = array[index_of_next_letter_in_array]
    	   
    	   until i == array[index_of_letter_in_array..-1].length
    	   		    if 	alphabet.index(letter) > alphabet.index(value_of_next_item_in_array)
	
    	   				array[index_of_letter_in_array], array[index_of_next_letter_in_array] =
    	   				 array[index_of_next_letter_in_array], array[index_of_letter_in_array]
    	   			end #if
    	   			
    	   			i += 1 
    	   	index_of_next_letter_in_array = index_of_letter_in_array + i 
    	   	value_of_next_item_in_array = array[index_of_next_letter_in_array]
    	   	end #until
    	  	
    	end #do

    counter += 1
	end #until
	p new_array

end #def

p array_example = ["c", "e", "z", "a", "b", "l","m","a","x","y","i","h"]
 
alphabet_sort(array_example)
