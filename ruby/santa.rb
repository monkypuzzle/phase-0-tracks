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

  def celebrate_birthday
    @age += 1
  end

  def get_mad_at(reindeer)
    @reindeer_ranking.delete(reindeer)
    @reindeer_ranking.push(reindeer)
  end

  def gender=(new_gender)
    @gender = new_gender
  end

  def age
    @age
  end

  def ethnicity
    @ethnicity
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
  santa.gender = genders.sample
  santa.celebrate_birthday
  santa.get_mad_at("Dasher")
  santa.age
  santa.ethnicity
  p santa
end

