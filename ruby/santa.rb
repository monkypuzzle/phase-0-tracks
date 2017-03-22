class Santa

  def initialize(gender,ethnicity)
    puts "Initializing Santa instance..."
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0
  end

  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie)
    puts "That was a good #{cookie}!"
  end

  def print
    puts "Gender is #{@gender}."
    puts "Ethnicity is #{@ethnicity}."
  end

end

# george = Santa.new
# george.speak
# george.eat_milk_and_cookies('gingersnap')

santas = []

genders = ["male","female","transgender"]
ethnicities = ["black", "latino", "south asian", "pacific islander", "white"]

ethnicities.each do | ethnicity |
  santas << Santa.new(genders.sample, ethnicity)
end

ObjectSpace.each_object(Santa) do | santa |
  p santa
  
end