def list_dinos()
  puts "Starting outside the block."
  puts "T-Rex"
  puts "Now entering the block."
  yield("Stegosaurus", "Ankylosaurus", "Gallomimus")
  puts "Now exiting the block."
  puts "Brontosaurus"
end

list_dinos { |dino1, dino2, dino3| puts dino1; puts dino2; puts dino3 }

numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

hollywood_actors = {
  "Brad Pitt" => "Interview With a Vampire",
  "Ben Affleck" => "Argo",
  "Matt Damon" => "Good Will Hunting",
  "Angelina Jolie" => "Tomb Raider",
  "Michael Cera" => "Superbad"
}

numbers.each do |x|
  puts x
end

hollywood_actors.each do |actor, movie|
  puts "#{actor} was the star of #{movie}."
end

numbers.map! do |x|
  x * 10
end

puts numbers