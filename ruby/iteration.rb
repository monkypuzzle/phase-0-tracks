def list_dinos()
  puts "Starting outside the block."
  puts "T-Rex"
  puts "Now entering the block."
  yield("Stegosaurus", "Ankylosaurus", "Gallomimus")
  puts "Now exiting the block."
  puts "Brontosaurus"
end

list_dinos { |dino1, dino2, dino3| puts dino1; puts dino2; puts dino3 }