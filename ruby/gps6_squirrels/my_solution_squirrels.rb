# Virus Predictor

# I worked on this challenge [by myself, with: Yibin ].
# We spent 1.5 hours on this challenge.

# EXPLANATION OF require_relative
# allows the current document to access the content of the linked document. relative to the documents you're working on
# require is a broader search for the linked document
require_relative 'state_data_squirrels'

class VirusPredictor

# initializes the attributes of the class
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

# calls the private methods below passing in the given attributes
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private

# takes attributes in based upon population density and preforms calculation providing anticipated deaths
  def predicted_deaths
    # predicted deaths is solely based on population density
    if @population_density >= 200
      number_of_deaths = (@population * 0.4)
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3)
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2)
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1)
    else
      number_of_deaths = (@population * 0.05)
    end

    print "#{@state} will lose #{number_of_deaths.floor} people in this outbreak"

  end

# takes attributes in based upon population density and preforms calculation providing the speed at which it will spread
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.

    if @population_density >= 200
      speed = 0.5
    elsif @population_density >= 150
      speed = 1
    elsif @population_density >= 100
      speed = 1.5
    elsif @population_density >= 50
      speed = 2
    else
      speed = 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


#alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
#alabama.virus_effects
#
#jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
#jersey.virus_effects
#
#california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
#california.virus_effects
#
#alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
#alaska.virus_effects


STATE_DATA.each do |state, state_info|
  each_state = VirusPredictor.new(state, state_info[:population_density], state_info[:population])
  each_state.virus_effects
end


#=======================================================================
# Reflection Section

=begin
What are the differences between the two different hash syntaxes shown in the state_data file?
the giant hash uses a string as the key with the hash rocket for the values. this syntax is best used when the key needs to be 'pretty' for a user
the hashy hash uses the symbol of the colon after the key with the values following.

What does require_relative do? How is it different from require?
require_relative links a related document to the current document
the difference between the two is that require_relative searches for the linked document in the directory you are in,
require will look for the linked document in your entire system to find it.

What are some ways to iterate through a hash?
.each is probably the easiest to use.
a while statement could be built, set a value to zero and then add one after each pass.

When refactoring virus_effects, what stood out to you about the variables, if anything?
since the instance variables are accessible through the entire class, it wasn't necessary to pass them in as arguments.
the if statements could run just using the instance variables.

What concept did you most solidify in this challenge?
i'm getting more comfortable with instance variables and seeing how much they can do.
still a little confused on when they would need to be attr_reader or attr_accessor.

=end