

class Puppy

  def initialize
    puts "Initializing new puppy instance..."
  end

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(int)
    int.times { puts 'woof' }
  end

  def roll_over
    puts "*rolls over*"
  end

  def dog_years(age)
    age * 7
  end

  def shake_paw(name)
    puts "*shakes paw with #{name}*"
  end

end

rover = Puppy.new
rover.fetch('ball')
rover.speak(5)
rover.roll_over
p rover.dog_years(10)
rover.shake_paw('Bob')



cats = []

class Cat

  def intialize
    puts "Initializing new cat instance..."
  end

  def cough_furball
    puts "*coughs out furball*"
  end

  def takes_nap(length)
    puts "*goes to sleep for #{length} minutes"
  end

end

counter = 0

while counter <= 50
  cats.push("Cat #{counter}")
  cats[counter] = Cat.new
  counter += 1
end

p cats

cats.each do |x|
  x.cough_furball
  x.takes_nap(50)
end
