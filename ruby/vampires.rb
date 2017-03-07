puts 'How many employees would you like to process?'

noEmployees = gets.chomp.to_i

for i in 1..noEmployees

# Name
puts 'What is your name?'
userName = gets.chomp


# Age and birth year
puts 'How old are you?'
age = gets.chomp.to_i
puts 'What year were you born?'
birthYear = gets.chomp.to_i
ageBoolean = nil
if (2017 - birthYear) == age
  ageBoolean = true
else 
  ageBoolean = false
end


# Garlic bread
puts 'Our company cafeteria serves garlic bread. Should we order some for you, yes or no?'
garlicBread = gets.chomp
garlicBreadBoolean = nil
if garlicBread == 'yes'
  garlicBreadBoolean = true
elsif garlicBread == 'no'
  garlicBreadBoolean = false
end


# Health insurance
puts 'Would you like to enroll in the company\'s health insurance?'
health = gets.chomp
healthBoolean = nil
if health == 'yes'
  healthBoolean = true
elsif health == 'no'
  healthBoolean = false
end

# Allergies
puts 'Can you tell us all of your allergies, one at a time?'
allergies = []
allergiesSunshine = false
until allergies.last == 'done' || allergies.last == 'sunshine'
  allergies.push gets.chomp
  if allergies.last == 'sunshine'
    allergiesSunshine = true
    puts 'I see... Okay well, we\'ve got your evaluation.'
  else
    puts 'Okay. What else? Say \'done\' if that\'s it'
  end
end


# Evaluation
if ( ageBoolean  && garlicBreadBoolean && healthBoolean )
  puts 'Probably not a vampire.'
elsif ( !ageBoolean && ( !garlicBreadBoolean || !healthBoolean) ) || allergiesSunshine
  puts 'Probably a vampire.'
elsif ( !ageBoolean && !garlicBreadBoolean && !healthBoolean )
  puts 'Almost certainly a vampire.'
elsif ( userName == 'Drake Cula' || userName == 'Tu Fang' )
  puts 'Definitely a vampire.'
else
  puts 'Results inconclusive.'
end

if i == noEmployees
  puts 'Actually, never mind! What do these questions have to do with anything? Let\'s all be friends.'
else
  puts 'Okay, next employee!'
end

end