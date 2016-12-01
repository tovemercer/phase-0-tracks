class Santa

	def initialize(gender, ethnicity)
		puts "Initializing Santa instance ..."
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
	end
	
	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end
	
	def eat_milk_and_cookies(cookie_type)
		puts "That was a good #{cookie_type} cookie!"
	end

end

#santas = Santa.new
#santas.speak
#santas.eat_milk_and_cookies('chocolate chip')

santas = []
genders = ["Male", "Female", "Bigender", "Gender Fulid", "Agender", "Female"]
ethnicities = ["Black", "Hispanic", "White", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)"]

genders.length.times do |i|
  santas << Santa.new(genders[i], ethnicities[i])
  puts "#{santas.length} santas have been added."
  puts
end

santas.each do |santa|
	santa.speak
	santa.eat_milk_and_cookies("peanut butter")
end