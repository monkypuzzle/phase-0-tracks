
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


def generate_hash ()
  $client_details = {
    name: "",
    age: "",
    has_children: "",
    decor_theme: "" 
  }
  puts "What's your name?"
  $client_details[:name] = gets.chomp
  puts "What's your age?"
  $client_details[:age] = gets.chomp.to_i
  puts "Do you have children? y/n"
  has_children_response = gets.chomp
    if has_children_response == 'y'
      $client_details[:has_children] = true
    else
      $client_details[:has_children] = false
    end
  puts "Which decor theme would you like? Our options are: Rustic Western, Island Paradise, and Victorian."
  $client_details[:decor_theme] = gets.chomp
  puts "Great! Let\'s see here..."
end

def print_hash ()
  puts "\nLet me see if I have this right."
  puts "Your name is #{$client_details[:name]}. \nYou are #{$client_details[:age]} years old."
  if $client_details[:has_children] == true
    puts "You have children."
  else
    puts "You have no children."
  end
  puts "And your preferred decor theme is #{$client_details[:decor_theme]}."
end

def correct_details ()
  puts "Which field would you like to change? Please answer 'name', 'age', 'children', or 'decor theme'."
  user_response = gets.chomp
  puts 'Okay, and what would you like to change it to?'
  user_revision = gets.chomp
  if user_response == 'name'
    $client_details[:name] = user_revision
  elsif user_response == 'age'
    $client_details[:age] = user_revision
  elsif user_response == 'children'
    $client_details[:children] = user_revision
  elsif user_response == 'decor theme'
    $client_details[:decor_theme] = user_revision
  end
  puts 'Can do!'
end

def collect_client_details ()
  generate_hash
  print_hash
  puts 'Is that correct? y/n'
  user_confirm = gets.chomp
    if user_confirm == "y"
      puts "Great! Have a good day!"
    else
      correct_details
      print_hash
      puts "You're all set!"
    end
end

collect_client_details


