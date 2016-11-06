#Release 0
#.while loop
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


##.block
#def search_array(arr, num)
#	arr.each do |int|
#		if arr[int] == num
#			puts "#{int}"
#		end #do
#	end #while
#end #def
#
#arr = [3, 6, 53, 12, 37]
#p search_array(arr, 12)
#p search_array(arr, 14)
#p search_array(arr, 3)
#p search_array(arr, 6)

#Release 1
def fibb(length)
	arr = [0, 1] 
	arr.each do |number|
		if arr.length != length
			next_num = arr[-2] + arr[-1]
			arr.push(next_num)
		end
	end
end

fibb(100)

#How can we verify this number is correct?
#if fibb(100).index(101) == 218922995834555169026

#Bubble Sort

#def bubble_sort(array)
#  n = array.length
#  loop do
#    swapped = false
#
#    (n-1).times do |i|
#      if array[i] > array[i+1]
#        array[i], array[i+1] = array[i+1], array[i]
#        swapped = true
#      end
#    end
#
#    break if not swapped
#  end
#
#  array
#end
#
#array = [4, 2, 14, 10, 5, 100]		
#bubble_sort(array)	

#Release 2
def alphabet_sort(array)
	alphabet =  ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
	array.each do |letter|
		if array[letter] > array[letter+1]
			array[letter], array[letter+1] = array[letter+1], array[letter]
			
			
		first_letter = array[0]
		alphabet.index(first_letter)
