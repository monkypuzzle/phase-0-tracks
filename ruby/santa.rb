class Santa

  attr_reader :ethnicity
  attr_accessor :gender, :age

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

end

# george = Santa.new
# george.speak
# george.eat_milk_and_cookies('gingersnap')

santas = []

genders = ["male","female","transgender"]
ethnicities = ["black", "latino", "south asian", "pacific islander", "white"]

100.times do
  Santa.new(genders.sample, ethnicities.sample)
end

ObjectSpace.each_object(Santa) do | santa |
  santa.age = rand(141)
  p "This santa is #{santa.ethnicity}"
  p "This santa is #{santa.age} years old."
  p "This santa's gender is #{santa.gender}."
end

