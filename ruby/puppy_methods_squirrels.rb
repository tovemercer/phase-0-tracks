class Puppy

	def initialize
		puts "Initializing new puppy instance ..."
	end

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(int)
  	i = 0
  	while i < int
  		puts "Woof!"
  		i += 1
  	end
  end

  def roll_over
		p "roll over"
  end

  def dog_years(human_years)
  	$age = human_years * 7
  	p $age
  end

  def attack(name)
  	puts "Nevermind, I'd rather just sleep."
  end

			
end


puppy = Puppy.new
puppy.fetch('ball')
puppy.speak(4)
puppy.roll_over
puppy.dog_years(7)
puppy.attack("Chris")
