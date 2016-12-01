class Santa
	attr_reader :age, :ethnicity
	attr_accessor :gender

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

	def celebrate_birthday
		@age += 1
		puts "This reindeer is now #{@age}!"
	end

	def get_mad_at(name)
		@reindeer_ranking.delete(name)
		@reindeer_ranking << name
	end

#	#setter method
#	def gender=(updated_gender)
#		@gender = updated_gender
#	end
#
#	#getter methods
#	def age
#		@age
#	end
#
#	def ethnicity
#		@ethnicity
#	end
#
#	def gender
#		@gender
#	end

end

santas = Santa.new("female", "african-american")
#santas.speak
#santas.eat_milk_and_cookies('chocolate chip')
santas.celebrate_birthday
santas.get_mad_at("Vixen")
santas.gender = "bigender"
puts "A santa has updated thier gender to #{santas.gender}."
puts "This santa is an #{santas.age} year old #{santas.ethnicity}."

##santas = []
##genders = ["Male", "Female", "Bigender", "Gender Fulid", "Agender", "Female"]
##ethnicities = ["Black", "Hispanic", "White", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)"]
##
##genders.length.times do |i|
##  santas << Santa.new(genders[i], ethnicities[i])
##  puts "#{santas.length} santas have been added."
##  puts
##end
##
##santas.each do |santa|
##	santa.speak
##	santa.eat_milk_and_cookies("peanut butter")
##end