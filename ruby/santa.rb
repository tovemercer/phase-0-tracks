class Santa
end

class Santa

	def initialize(gender, ethnicity)
		p "Initializing Santa instance ..."
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
	end

	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end
	
	def eat_milk_and_cookies(cookie_type)
		puts "That was a good #{cookie_type}!"
		return cookie_type
	end

	def celebrate_birthday
		@age =+ 1
		puts "You are now #{@age}!"
	end

	def get_mad_at(reindeer)
		puts "Bad #{reindeer}!!!"
		@reindeer_ranking.delete(reindeer)
		@reindeer_ranking << reindeer
	end

#	def santa_profile
#		puts "Gender: #{@gender}"
#		puts "Ethnicity: #{@ethnicity}"
#		puts "Reindeer Ranking: #{@reindeer_ranking}"
#		puts "Age: #{@age}"
#	end

end

santa_mayhem = Santa.new("female", "hispanic")
santa_mayhem.speak
santa_mayhem.eat_milk_and_cookies("chocolate chip cookie")
santa_mayhem.celebrate_birthday
santa_mayhem.get_mad_at("Vixen")
#santa_mayhem.santa_profile

santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
example_genders.length.times do |i|
  santas << Santa.new(example_genders[i], example_ethnicities[i])
end