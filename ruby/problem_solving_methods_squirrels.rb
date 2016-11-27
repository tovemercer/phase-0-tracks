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

