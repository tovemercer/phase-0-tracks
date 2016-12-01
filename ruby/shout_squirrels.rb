#module Shout
#	def self.yell_angrily(words)
#		words + "!!!" + ":("
#	end
#
#	def self.yell_happily(words)
#		words + "!!!" + ":)"
#	end
#end
#
#puts Shout.yell_angrily("Boo")
#puts Shout.yell_happily("Yay")

module Shout
	def talking_loudly(word)
		puts "When I get excited I shout, #{word}!"
	end
end

class Coach
	include Shout
end

class Doctor
	include Shout
end

coach = Coach.new
coach.talking_loudly("goal")

doctor = Doctor.new
doctor.talking_loudly("damnit, I'm a doctor not a robot")