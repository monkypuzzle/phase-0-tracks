class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(number_woofs)
    puts 'woof' * number_woofs
  end

  def roll_over
    puts "*rolls over*"
  end

  def dog_years(human_age)
    puts human_age / 7
  end

  def shake_paw
    puts "*shakes paw*"
  end

end

rover = Puppy.new

p rover.methods

rover.fetch('ball')