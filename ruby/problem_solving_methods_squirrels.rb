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
