class Puppy

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