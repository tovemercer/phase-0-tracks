class Santa
end

class Santa

def speak
	puts "Ho, ho, ho! Haaaappy holidays!"
end

def eat_milk_and_cookies(cookie_type)
	puts "That was a good #{cookie_type}!"
	return cookie_type
end

end

santa_mayhem = Santa.new
santa_mayhem.speak
santa_mayhem.eat_milk_and_cookies("chocolate chip")