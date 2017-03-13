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

