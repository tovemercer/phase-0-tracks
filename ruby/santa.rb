class Santa
attr_reader :age, :ethnicity
attr_accessor :gender

	def initialize(gender, ethnicity, age)
		p "Initializing Santa instance ..."
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = age
	end

	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
		puts "From the #{@ethnicity} #{@gender}!"
	end
	
	def eat_milk_and_cookies(cookie_type)
		puts "That was a good #{cookie_type}!"
		return cookie_type
	end

	def celebrate_birthday
		@age += 1
	end

	def get_mad_at(reindeer)
		@reindeer_ranking.delete(reindeer)
		@reindeer_ranking << reindeer
	end
end

##setter method:
#	def gender=(updated_gender)
#		@gender = updated_gender
#	end

##getter methods:
#	def age
#		@age
#	end
#
#	def ethnicity
#		@ethnicity
#	end

##Driver Code:
#santa_mayhem = Santa.new("female", "hispanic")
#santa_mayhem.speak
#santa_mayhem.eat_milk_and_cookies("chocolate chip cookie")
#santa_mayhem.celebrate_birthday
#santa_mayhem.get_mad_at("Vixen")
#santa_mayhem.gender = "fluid"
#puts "You are now #{santa_mayhem.age}!"
#puts "I am now #{santa_mayhem.gender}."
#puts "Our #{santa_mayhem.ethnicity} reindeer is #{santa_mayhem.age}."

santas = []
santa_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
santa_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
#santa_genders.length.times do |i|
#santas << Santa.new(santa_genders[i], santa_ethnicities[i], rand(0..140))
#end

50.times do
	santa = Santa.new(santa_genders[rand(0..7)], santa_ethnicities[rand(0..7)], rand(0..140))
	puts "This Santa's Profile:"
	puts "Gender: #{santa.gender}"
	puts "Ethnicity: #{santa.ethnicity}"
	puts "Age: #{santa.age}"
end