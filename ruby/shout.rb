#module Shout
#  # we'll put some methods here soon, but this code is fine for now!
#  def self.yell_angrily(words)
#  	words + "!!!" + " :("
#  end
#
#  def self.yelling_happily(words)
#  	words + "!!!" + " :)"
#  end
#
#end
#
#p Shout.yell_angrily("Damn")
#p Shout.yelling_happily("Yippie")

module Shout
	def yelling(word)
		puts "When you get excited yell, #{word}!"
	end
end

class Rollercoaster
	include Shout
end

class BadDriver
	include Shout
end

rollercoaster = Rollercoaster.new
rollercoaster.yelling("WOO-HOO")

baddriver = BadDriver.new
baddriver.yelling("Out of the way")