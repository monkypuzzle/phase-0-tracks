# Get hamster name
puts 'What is your hamster\'s name?'
hamsterName = gets.chomp

# Get hamster volume
hamsterVolume = 0
hamsterVolumeValid = false
puts 'A good name. On a scale of 1 to 10, how loud is your hamster?'

hamsterVolume = gets.chomp.to_i

while hamsterVolumeValid == false
  if 
    hamsterVolume < 11 and hamsterVolume > 0
    print 'Thanks! '
    hamsterVolumeValid = true
  else
    puts 'We need a number between 1 and 10 please!'
    hamsterVolume = gets.chomp.to_i
  end
end

# Get hamster fur color
puts 'What is your hamster\'s fur color?'
hamsterColor = gets.chomp

# Get hamster adoptability
hamsterAdoptionValid = nil
hamsterAdoptionResponse = ''

puts 'Good good. Is your hamster good for adoption, yes or no?'

while hamsterAdoptionValid == nil
  hamsterAdoptionResponse = gets.chomp
  if hamsterAdoptionResponse == 'yes'
    hamsterAdoptionValid = true
  elsif hamsterAdoptionResponse == 'no'
    hamsterAdoptionValid = false
  else
    puts 'Sorry, we need a yes or no.'
  end
end

hamsterAdoptionNot = ''

if hamsterAdoptionValid == false
  hamsterAdoptionNot = 'NOT '
end

# Get hamster age
puts 'Great! What is your hamster\'s age? If you don\'t know, just press return.'

hamsterAge = gets.chomp

if hamsterAge == ''
  hamsterAge = nil
end

if hamsterAge == nil
  hamsterAgeOutput = 'an unknown number of'
else
  hamsterAgeOutput = hamsterAge
end

puts 'Okay then! So your hamster is named ' + hamsterName + ', on a scale of loudness 1 to 10 it\'s a ' + hamsterVolume.to_s + ', its fur is ' + hamsterColor + ', it is ' + hamsterAdoptionNot + 'ready for adoption, and it\'s ' + hamsterAgeOutput + ' years old. Great!'



