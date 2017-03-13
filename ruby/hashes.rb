# Pseudocode
# - Define a hash that contains all necessary data types.
# - Prompt user for each datum, one at a time
#   - Check entered datum is correctly formatted
#   - Save each datum in corresponding key
# - Print out hash for user's review
# - Prompt user for corrections
#   - If changes desired, ask user which key
#   - Correct desired datum
# - Print updated hash and exit program

client_details = {
  name: '',
  age: '',
  has_children: '',
  number_of_children: '',
  number_of_rooms: '',
  favorite_colors: ''
}

puts 'Hello and welcome - we\'re excited to work with you!
Let\'s get started building your profile. What\'s your name?'
client_details[:name] = gets.chomp

puts 'Excellent! What\'s your age?'
client_details[:age] = gets.chomp.to_i

puts 'Do you have children? Please answer \'y\' or \'n\'.'
has_children = gets.chomp
if gets.chomp == 'y'
  client_details[:has_children] = true
else
  client_details[:has_children] = false
end

if client_details[:has_children] == true
  puts 'How many children do you have?'
  client_details[:number_of_children] = gets.chomp.to_i
end

puts 'How many rooms do you have?'
client_details[:number_of_rooms] = gets.chomp.to_i

puts 'What are your favorite colors? Press enter after each color, and when you\'re done, just press enter.'
favorite_colors = []

loop do
  break if user_input = ''
  user_input = gets.chomp
  favorite_colors.push = user_input
end

client_details[:favorite_colors] = favorite_colors

puts 'Great! So '

