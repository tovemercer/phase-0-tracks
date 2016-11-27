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


