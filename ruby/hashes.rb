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

# client_details = {
#   name: '',
#   age: '',
#   has_children: '',
#   number_of_children: '',
#   number_of_rooms: '',
#   favorite_colors: []
# }

# # Methods

# def get_has_children ()
#   has_children = gets.chomp
#   has_children_boolean = ''
#   if has_children == 'y'
#   has_children_boolean = true
#   else
#   has_children_boolean = false
#   end
#   has_children_boolean
# end

# def get_favorite_colors()
#   favorite_colors = []
#   loop do
#     user_input = gets.chomp
#     break if user_input == ''
#     favorite_colors.push user_input
#   end
#   favorite_colors
# end

# def print_hash ()
#   favorite_colors_literal = ''
#   $client_details[:favorite_colors].each do |color|
#     if color.equal?($client_details[:favorite_colors].last)
#       favorite_colors_literal += ( 'and' + color )
#     else
#       favorite_colors_literal += ( color + ', ' )
#     end
#   end
#   has_children_literal = ''
#   if has_children == 'y'
#       has_children_literal = 'have no'
#   else
#       has_children_literal = 'do have'
#   end
#   puts "Great! so here\'s what we have. Does this look okay?
#   Your name is #{$client_details[:name]}.
#   Your age is #{$client_details[:age]}.
#   You #{has_children_literal} children.
#   You have #{$client_details[:number_of_children]} children.
#   You have #{$client_details[:number_of_rooms]} rooms.
#   Your favorite colors are #{favorite_colors_literal}."
# end

# def revise_hash()
#   user_confirmation_key = gets.chomp
#   if user_confirmation_key == "name"
#     $client_details[:name] = gets.chomp
#   elsif user_confirmation_key == "age"
#     $client_details[:age] = gets.chomp.to_i
#   elsif user_confirmation_key == "children"
#     get_has_children()
#   elsif user_confirmation_key == "number of children"
#     $client_details[:number_of_children] = gets.chomp.to_i
#   elsif user_confirmation_key == "number of rooms"
#     $client_details[:number_of_rooms] = gets.chomp.to_i
#   elsif user_confirmation_key == "favorite colors"
#     get_favorite_colors()
#   end
# end


# puts 'Hello and welcome - we\'re excited to work with you!
# Let\'s get started building your profile. What\'s your name?'
# client_details[:name] = gets.chomp

# puts 'Excellent! What\'s your age?'
# client_details[:age] = gets.chomp.to_i

# puts 'Do you have children? Please answer \'y\' or \'n\'.'
# get_has_children()
# client_details[:has_children] = get_has_children()

# if client_details[:has_children] == true
#   puts 'How many children do you have?'
#   client_details[:number_of_children] = gets.chomp.to_i
# end

# puts 'How many rooms do you have?'
# client_details[:number_of_rooms] = gets.chomp.to_i

# puts 'What are your favorite colors? Press enter after each color, and when you\'re done, just press enter.'
# client_details[:favorite_colors] = get_favorite_colors()

# puts "Okay! This is what we have. Does this look okay?"
# print_hash()

# user_confirmation = gets.chomp

# if user_confirmation == 'y'
#   puts 'Great!'
# else
#   puts "Which field would you like to change? Please answer \'name\', \'age\', \'children\', \'number of children\', \'number of rooms\', or \'favorite colors\'."
# end

# puts 'Okay, what would you like to change it to?'
# revise_hash()

# puts "Great! Here are your revised details."
# print_hash ()



