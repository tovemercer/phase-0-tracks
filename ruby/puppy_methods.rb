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
  	while i < int do
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

  def high_five(num)
  	i = 0
  	while i < num do
  		puts "Good dog!"
  	i += 1
  	end
  end

end

puppy = Puppy.new
puppy.fetch("ball")
puppy.speak(5)
puppy.roll_over
puppy.dog_years(5)
puts "Dogs age is #{$age}"
puppy.high_five(3)

class Birds

   def initialize
  	puts "Initializing new bird instance ..."
   end

   def food(type)
   	puts "You ate a #{type}."
   end

   def miles_flown(int)
   	puts "You flew #{int} miles!"
   end

end

birddie_arr = []
num = 0
	
	while num < 50
	birddie_arr << Birds.new
	num += 1
	end

birddie_arr.each do |bird_count|
	bird_count.food("worm")
	bird_count.miles_flown(100)
end

p birddie_arr
