# Release 0
def search_array(arr, num)
	int = 0
	while int < arr.length
		if arr[int] == num
			puts int
		end
	int = int + 1
	end
end


arr = [42, 89, 23, 1]

search_array(arr, 5)
search_array(arr, 89)

# Release 1
def fibb(length)
	arr = [0, 1]
	arr.each do |number|
		if arr.length != length
			next_num = arr[-2] + arr[-1]
			arr.push(next_num)
		end
	end
end

#fibb(100)
if fibb(100).last == 218922995834555169026
	puts "Good work!"
else
	puts "Almost there!"
end

# Release 2
def alphabet_sort(array)
  alphabet =  ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", 
    	"p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
  counter = 0
  until counter == 50

    new_array = array.each do |letter|
      i = 1
      letter_index = array.index(letter)
      next_letter_index = letter_index + i 
      next_letter = array[next_letter_index]

        until i == array[letter_index..-1].length
          if 	alphabet.index(letter) > alphabet.index(next_letter)
          array[letter_index], array[next_letter_index] = array[next_letter_index], array[letter_index]
          end

        i += 1 
        next_letter_index = letter_index + i 
        next_letter = array[next_letter_index]
      end

    end
  counter += 1
  end 
p new_array
end

p array_example = ["t", "e", "a", "f", "h", "g", "q", "l", "s", "r", "v", "k"]
 
alphabet_sort(array_example)