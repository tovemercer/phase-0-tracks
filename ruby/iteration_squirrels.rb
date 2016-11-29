holidays = ['thanksgiving', 'christmas', 'new years']
thanksgiving_dinner = {
	protien: "turkey",
	veggie: "green beans",
	desert: "apple pie"
}

## Iterate using .each
# Array

puts "Before .each call:"
puts holidays
puts

holidays.each do |holiday|
	holiday
end

puts "After .each call:"
puts holidays
puts

# Hash

puts "Before .each call:"
puts thanksgiving_dinner
puts

thanksgiving_dinner.each do |food_type, food_item|
	puts "We ate #{food_item} as our #{food_type} on Thanksgiving."
end

puts

## Iterate using .map!
# Array

puts "Before .map! call:"
puts holidays
puts

holidays.map! do |holiday|
	holiday.reverse
end

puts "After .map! call:"
puts holidays
puts

## Block Methods
# Array

# 1
number = [3, 66, 14, 78, 32, 7]

number.delete_if { |x| x < 29 }

# 2
number = [3, 66, 14, 78, 32, 7]

number.keep_if { |x| x < 29 }

# 3
number = [3, 66, 14, 78, 32, 7]

number = number.index { |x| x == 7}

# 4
number = [3, 66, 14, 78, 32, 7]

number = number.drop_while { |i| i < 75 }

# Hash

# 1
hashy = {a: 1, b: 2, c: 3, d: 4, e: 5}

hashy.delete_if { |letter, number| number >= 4}

# 2
hashy = {a: 1, b: 2, c: 3, d: 4, e: 5}

hashy.keep_if { |letter, number| number >= 4}

# 3
hashy = {a: 1, b: 2, c: 3, d: 4, e: 5}

hashy.has_key?(:e)

#4
hashy = {a: 1, b: 2, c: 3, d: 4, e: 5}

hashy.reject { |letter, number| number > 3 }
