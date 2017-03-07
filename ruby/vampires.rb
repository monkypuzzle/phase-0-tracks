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


# Evaluation
if ( ageBoolean  && garlicBreadBoolean && healthBoolean )
  puts 'Probably not a vampire.'
elsif ( !ageBoolean && ( !garlicBreadBoolean || !healthBoolean) )
  puts 'Probably a vampire.'
elsif ( !ageBoolean && !garlicBreadBoolean && !healthBoolean )
  puts 'Almost certainly a vampire.'
elsif ( userName == 'Drake Cula' || userName == 'Tu Fang' )
  puts 'Definitely a vampire.'
else
  puts 'Results inconclusive.'
end
