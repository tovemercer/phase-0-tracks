# Virus Predictor

# I worked on this challenge [with: Ashit Adhikari].
# We spent [1.5] hours on this challenge.

# EXPLANATION OF require_relative
#
#
require_relative 'state_data'
# require '/home/austin/Desktop/gitrepo/phase-0-tracks/ruby/gps6/state_data'

# Write a comment explaining the require_relative statement. 
# What does it do? 
# Ans: Require relative statement in ruby allows the document(where the statement is called) to have access to the 
# document that is called by require relative statement.

# How does it work? 
# Ans: Require Relative statement is followed by the name of the file, this does not include the file extension.
# Using the filename the statement automatically gets access to the file.

# How does it differ from require
# Ans: Require statement absolutely requires the full path with the filename, the path begins at the root folder.
# Whereas, the require_relative statement does not require the path, it only requires the filename if the file is in the same folder.
# Require Relative needs path if the file is not in the same folder.

class VirusPredictor

 # Initialize method is called when a new instance(object) of the class is created. It is responsible to intialize the 
 # class variables and assign values to those variables based upon the method parameter.
 def initialize(state_of_origin, population_density, population)
   @state = state_of_origin
   @population = population
   @population_density = population_density
 end

 # Virus Effects is created to call the two private methods of the class. The private method can only be accessed within
 # the class.
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

 private

 # The predicted death method takes the state name, the population of the state and the population density of the state
 # as method parameters. Then based upon the population density value, number of possible deaths is calulated. Then a
 # user friendly output is printed that shows the number of death in the state by the outbreak.
 def predicted_deaths
    # predicted deaths is solely based on population density
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
    else
      number_of_deaths = (@population * 0.05).floor
    end
    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

 end

def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0
    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else
      speed += 2.5
    end
    puts " and will spread across the state in #{speed} months.\n\n"
  end

end

#=======================================================================

# DRIVER CODE
# initialize VirusPredictor for each state

=begin
alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
alaska.virus_effects
=end

STATE_DATA.each do |key,value|
    VirusPredictor.new(key.to_s,value[:population_density],value[:population]).virus_effects
end

#=======================================================================
# Reflection Section

#What are the differences between the two different hash syntaxes shown in the state_data file?
#in the 'hashy hash' the information is entered as a string used the hash rockets. the hash within the hash uses symbols that include the ':'.

#What does require_relative do? How is it different from require?
#require_relative links related documents for use in the document in which require_relative is used. it works when housed in the same folder
#require differs from require_relative in that the full path of the file would need to be used to link the documents.

#What are some ways to iterate through a hash?
#.each is probably the most straighforward use.

#When refactoring virus_effects, what stood out to you about the variables, if anything?
#some of the variables are used in both programs. a module could be created to simplify .

#What concept did you most solidify in this challenge?
#iteration. i'm finally getting more comfortable with it and think i understand how it comes together.







