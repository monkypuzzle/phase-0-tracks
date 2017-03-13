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
has_children_literal = ''
if has_children == 'y'
  client_details[:has_children] = true
  has_children_literal = 'have no'
else
  client_details[:has_children] = false
  has_children_literal = 'have'
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
  user_input = gets.chomp
  break if user_input == ''
  favorite_colors.push user_input
end
client_details[:favorite_colors] = favorite_colors

favorite_colors_literal = ''

client_details[:favoritecolors].each |color| do
  unless client_
  favorite_colors_literal += color + ', and'
end

puts favorite_colors_literal


puts "Great! so here\'s what we have. Does this look okay?
Your name is #{:name}.
Your age is #{:age}.
You #{has_children_literal} children.
You have #{:number_of_children} children.
You have #{:number_of_rooms} rooms.
Your favorite colors are: #{favorite_colors_literal}."
+ "\nIs that correct?"





