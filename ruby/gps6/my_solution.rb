# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# Require relative plugs in code from a file at the specified directory.
# It's different from require in that the path is relative to current directory.
require_relative 'state_data'

class VirusPredictor

# Defines the parameters of the class and sets instance variables for those parameters.
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

# Calls predicted_deaths and speed_of_spread methods
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

private

# Calculates predicted_deaths based on population_density, and prints result.
  def predicted_deaths
    rate = nil
    # predicted deaths is solely based on population density
    if @population_density >= 200
      rate = 0.4
    elsif @population_density >= 150
      rate = 0.3
    elsif @population_density >= 100
      rate = 0.2
    elsif @population_density >= 50
      rate = 0.1
    else
      rate = 0.05
    end

    number_of_deaths = (@population * rate).floor

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

# Calculates speed_of_spread based on population_density and prints result.
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

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

STATE_DATA.each_key do | state |
  state_report = VirusPredictor.new(state, STATE_DATA[state][:population_density], STATE_DATA[state][:population])
  state_report.virus_effects
end

# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects


#=======================================================================
# Reflection Section
=begin
Hash syntax:
 The : syntax can only be used with symbols whereas the hash-rocket syntax => can be used with a key that's a string or a symbol.
Require:
  Require_relative links a file with a relative path, whereas require takes an absolute path.
Hash iterators:
  Some iterators that can be used with hashes are .each_pair, .each_key, and .each_value. They'll be useful in different situations, depending on how what kind of data you want to manipulate.
Virus effects:
  Refactoring virus effects made it apparent just how useful instance variables are. Any time you want to use a variable across more than one method, it's probably worth using an instance variable.
Concepts:
  The use of 'private' was totally new to me so I'm definitely going to be taking that away. It was also the first time I saw a constant in use - Neal's explanation of their usage really clarified how you might use them.
=end


