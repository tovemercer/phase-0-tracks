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

end

santa_mayhem = Santa.new("female", "hispanic")
santa_mayhem.speak
santa_mayhem.eat_milk_and_cookies("chocolate chip")
